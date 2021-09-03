<%@ page language="java" import="java.sql.*" %>
<html>
<body>
<%

Connection con =null;
	try
{
	 Class.forName("com.mysql.jdbc.Driver");  
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  
	out.println("connected..."+"<br>");
	
	String dun="";
	String dpw="";
	
	String un=request.getParameter("regid");
	//out.println("name="+un);
	session.setAttribute("max",un);
	out.println(dun);
	String pw=request.getParameter("pw");
	//out.println("password is"+password);
	PreparedStatement ps=con.prepareStatement("select registration_id,password from student_registration where registration_id=? and password=?");
		ps.setString(1,un);
		ps.setString(2,pw);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			dun = rs.getString(1);
			dpw = rs.getString(2);
		}
		out.println("" + dun);
		if (un.equals(dun) && pw.equals(dpw)) {
			
%>
	<jsp:forward page="home.jsp" ></jsp:forward>
	<%
	}
	else
	{
	%>
	<jsp:forward page="invalidstud.jsp" />
	<%
	}
}
	catch(Exception e)
	{
		out.println("problem..."+e);
	}
%>
	
</body>
</html>