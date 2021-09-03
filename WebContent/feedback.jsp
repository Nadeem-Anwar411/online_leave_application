<%@ page language="java" import="java.sql.*" %>
<html>
<body>
<%
Connection con = null;
try
{
	 Class.forName("com.mysql.jdbc.Driver");  
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  
	//out.println("connected..."+"<br>");


	
	String un=request.getParameter("username");  
	//out.print("<br/>welcome "+un); 
	
	String branchsec=request.getParameter("bs");  

	String fa=request.getParameter("fa");  
	//out.print("<br/>welcome "+pwd); 

	//String clg=request.getParameter("tat");  
	//out.print("<br/>welcome "+clg); 

	String mf=request.getParameter("mf");  
	//out.print("<br/>welcome "+cpw);

	
	PreparedStatement ps=con.prepareStatement("insert into feedback(username,branch_sec,feedback_area) values('"+un+"','"+branchsec+"','"+fa+"')");
	
	
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