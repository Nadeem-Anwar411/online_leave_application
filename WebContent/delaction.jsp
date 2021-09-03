<%@page import="java.sql.*" %>
	  <%     String registration=request.getParameter("n");
	  Connection con =null;
	try
	{
		 Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  
		PreparedStatement ps=con.prepareStatement("delete from student_registration where registration_id=?");
		ps.setString(1,registration);
		int r=ps.executeUpdate();
		if(r==1)
		{
			out.println("<h2>1 Record is deleted..</h2>");
			response.setHeader("Refresh","3;URL=Swelcome.jsp");
			
		}
		con.close();
	}
	
catch(Exception e)
	{
	 out.println(e);
	}
	%><br>
