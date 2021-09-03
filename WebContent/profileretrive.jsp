<%@ page language="java" import="java.sql.*" %>
<html>
<body>
<%

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//out.println("driver loaded..."+"<br>");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps=con.prepareStatement("select * from regiidate");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
	System.out.println("Name ="+rs.getString(1));
	System.out.println("registration id ="+rs.getString(2));
	System.out.println("Email ="+rs.getString(3));
	System.out.println("Phone ="+rs.getString(4));
	}
}
catch(Exception e)
	{
		out.println("problem..."+e);
	}
	
	%>
</body>
</html>