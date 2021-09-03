<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<jsp:include page="Allpage.jsp"></jsp:include>
<head>
<meta charset="ISO-8859-1">
<title>ONLINE LEAVE APPLICATION</title>

</head>
<body>

	<h2><u>STUDENT PROFILE<u></u></h2><table border="6">
	<tr><th><h3>Name</th><th>Registration Number</th><th>Email</th><th>Mobile</h3></th></tr>
	<%@page import="java.sql.*" %>
	  <%  
	  String n=(String)session.getAttribute("max");
	  //out.println(n);
	Connection con = null;
	try
	{
	    Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  
		PreparedStatement ps=con.prepareStatement("select * from student_registration where registration_id=?");
		ps.setString(1,n);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
		
			out.println("<tr><td><b>"+rs.getString(1)+"</td>");
			out.println("<td><b>"+rs.getString(2)+"</td>");
			out.println("<td><b>"+rs.getString(4)+"</td>");
			out.println("<td><b>"+rs.getString(5)+"</td></tr>");



			
		}
		con.close();
	}
	
catch(Exception e)
	{
	 out.println(e);
	}
	%></table><br>
	
	 <a href="home.jsp">Back to Home Page</a>
	</pre></form>
</body>
</html>