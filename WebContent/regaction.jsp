<%@page import="java.sql.*" %>
	  <%     String uname=request.getParameter("un");
	  String pass=request.getParameter("p");
	  String regno=request.getParameter("rn");
	  String email=request.getParameter("em");
	  String mobile=request.getParameter("m");
	  String branch=request.getParameter("b");
	  String role=request.getParameter("r");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		PreparedStatement ps=con.prepareStatement("insert into login values(?,?,?)");
		ps.setString(1,regno);ps.setString(2,pass);ps.setString(3,role);
		PreparedStatement ps1=con.prepareStatement("insert into smsuser values(?,?,?,?,?,?)");
		ps1.setString(1,uname);ps1.setString(2,pass);ps1.setString(3,regno);ps1.setString(4,email);ps1.setString(5,mobile);ps1.setString(6,branch);
		int r=ps.executeUpdate();ps1.executeUpdate();
		if(r==1)
		{
			out.println("Successfuly Registered...");
			response.setHeader("Refresh", "3;URL=reg.jsp");
			
		}
		con.close();
	}
	
catch(Exception e)
	{
	 out.println(e);
	}
	%><br>
