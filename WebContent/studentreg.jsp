<%@ page language="java" import="java.sql.*" %>
<html>
<body>
<%

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//out.println("driver loaded..."+"<br>");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	//out.println("connected..."+"<br>");


	
	String un=request.getParameter("name");  
	//out.print("<br/>welcome "+un); 
	
	String reg=request.getParameter("reg");  

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

	
	PreparedStatement ps=con.prepareStatement("insert into regiidate values('"+un+"','"+pwd+"','"+cpw+"','"+em+"','"+ph+"','"+reg+ "')");
	
	
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

<jsp:include page="studentlogin.html"></jsp:include>
</body>
</html>