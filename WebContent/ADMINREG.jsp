<%@ page language="java" import="java.sql.*" %>
<html>
<body>
<%
Connection con=null;

try
{
	
	 Class.forName("com.mysql.jdbc.Driver");  
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  


	
	String un=request.getParameter("un");  
	//out.print("<br/>welcome "+un); 

	String pwd=request.getParameter("pw");  
	//out.print("<br/>welcome "+pwd); 

	//String clg=request.getParameter("tat");  
	//out.print("<br/>welcome "+clg); 

	String cpw=request.getParameter("cpw");  
	//out.print("<br/>welcome "+cpw); 

	//String dob=request.getParameter("dob");  
	//int a=Integer.parseInt(dob);
	//out.print("<br/>welcome "+a ); 

	String em=request.getParameter("em");
	//out.print("<br/>welcome "+em); 
	
	String ph=request.getParameter("ph");
	//out.print("<br/>welcome "+ph); 

	
	//PreparedStatement ps=con.prepareStatement("insert into admin_registration values('"+un+"','"+pwd+"','"+cpw+"','"+em+"','"+ph+"')");
	
	
	PreparedStatement ps=con.prepareStatement("insert into admin_registration(name,password,confirm_password,email,mobile) values('"+un+"','"+pwd+"','"+cpw+"','"+em+"','"+ph+"')");
	//ps.setString(1,"name");
	//ps.setString(2,"pwd");
	//ps.setString(3,"cwd");
	//ps.setString(4,"em");
	//ps.setString(5,"ph");

	int x=ps.executeUpdate();
	//out.println(x+"row is inserted");

}
	catch(Exception e)
	{
		out.println("problem..."+e);
	}
%>
<br>
</body>
<jsp:include page="adminlogin.html"></jsp:include>
</html>