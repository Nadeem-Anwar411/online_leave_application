<%@ page language="java" import="java.sql.*" %>
<html>
<body>
<%
Connection con =null;
try
{
	
	 Class.forName("com.mysql.jdbc.Driver");  
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","Nadeem@123");  
	
	String dun="";
	String dpw="";
	String un=request.getParameter("un");
	//out.println("usrename is"+userid);
	String pw=request.getParameter("pw");
	//out.println("password is"+password);
	PreparedStatement ps=con.prepareStatement("select name,password from admin_registration where name=? and password=?");
	ps.setString(1,un);
	ps.setString(2,pw);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
	dun=rs.getString(1);
	dpw=rs.getString(2);
	}
	out.println(""+dun);
	if( un.equals(dun) && pw.equals(dpw))
	{
	%>
	<jsp:forward page="Swelcome.jsp"></jsp:forward>
	<%
	}
	else
	{
	%>
	<jsp:forward page="invalid.html"/>
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