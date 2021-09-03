p;p<%@ page language="java" import="java.sql.*" %>
<html>
<body>
<%

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	out.println("driver loaded..."+"<br>");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","SYSTEM");
	out.println("connected..."+"<br>");
	
	
	
	String dun="";
	String dpw="";
	String un=request.getParameter("un");
	String pw=request.getParameter("pw");
	String addr=request.getParameter("addr");
	PreparedStatement ps=con.prepareStatement("select username,password from demo6 where username=? and password=?");
	ps.setString(1,un);
	ps.setString(2,pw);
	ResultSet rs=ps.executeQuery();
	
	while(rs.next())
	{
 		dun=rs.getString(1);
 		dpw=rs.getString(2);
 		
	}
	
	if(un.equals(dun) && pw.equals(dpw))
	{
		PreparedStatement ps1=con.prepareStatement("update demo6 set address=? where username=?");
		ps1.setString(1,addr);
		ps1.setString(2,un);
		int i=ps1.executeUpdate();
		out.println(i+"is updated");
	}
	else
	{
		out.println("please enter correct password");
	}
}
	catch(Exception e)
	{
		out.println("problem..."+e);
	}
%>
<br><a href="login.html">login page</a>
</body>
</html>