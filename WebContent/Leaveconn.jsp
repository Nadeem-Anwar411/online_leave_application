<%@ page language="java" import="java.sql.*" %>
<html>
<body>
<%
Connection con =null;
try
{
      Class.forName("com.mysql.jdbc.Driver");  
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  
	//out.println("connected..."+"<br>");


	
	String un=request.getParameter("username");  
	//out.print("<br/>welcome "+un); 
	
	String bransec=request.getParameter("bs");  

	String period=request.getParameter("per");  
	//out.print("<br/>welcome "+pwd); 

	//String clg=request.getParameter("tat");  
	//out.print("<br/>welcome "+clg); 

	String sd=request.getParameter("sd");  
	//out.print("<br/>welcome "+cpw); 

	String ed=request.getParameter("ed");  
	//int a=Integer.parseInt(dob);
	//out.print("<br/>welcome "+a ); 

	String purpose=request.getParameter("pl");
	//out.print("<br/>welcome "+em); 
	
	String address=request.getParameter("ha");
	//out.print("<br/>welcome "+ph); 
	String mobile=request.getParameter("mob");


	
	PreparedStatement ps=con.prepareStatement("insert into leave_application(student_name,branch_sec,period,from_date,to_date,application,home_addr,parents_mobile) values('"+un+"','"+bransec+"','"+period+"','"+sd+"','"+ed+"','"+purpose+ "','"+address+"','"+mobile+"')");
	
	
	//PreparedStatement ps=con.prepareStatement("insert into demo6 values(?,?,?,?,?)");
	//ps.setString(1,"name");
	//ps.setString(2,"pwd");
	//ps.setString(3,"em");
	//ps.setString(4,"address");

	int x=ps.executeUpdate();
	//out.println(x+"row is inserted");

}
	catch(Exception e)
	{
		out.println("problem..."+e);
	}
%>
<br>

<jsp:include page="Completed.html"></jsp:include>
</body>
</html>