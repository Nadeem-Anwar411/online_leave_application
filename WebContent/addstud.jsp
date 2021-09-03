<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="ISO-8859-1">
<title>online leave application</title>
<style>
h1{background:blue;color:white;font-size:50px;border:2px solid yellow;text-align:center;}
body{background:linear-gradient(skyblue,white,skyblue);}
</style>
</head>
<body>
	<h1>ONLINE LEAVE APPLICATION</h1>
	<h2><u>Add Student</u></h2>
	<form action="addaction.jsp"><pre><b>
	<table>
	<tr><th><h3>Enter NAME</b></th><th><input type="text" name="n"></th>
	<tr><th><h3>Enter PASSWORD</th><th><input type="text" name="p"></th></th> 
	<tr><th><h3>Enter Confirm Password</th><th><input type="text" name="cp"></th></th>
	<tr><th><h3>Enter Email</th><th><input type="text" name="e"></th></th>
	<tr><th><h3>Enter Mobile</th><th><input type="text" name="m"></th></th>
	<tr><th><h3>Enter Registration</th><th><input type="text" name="r"></th></tr>
	
	
	</table>
	
	            <input type="submit" value="Add"><br>
	 <a href="Swelcome.jsp">Back to Welcome Page</a>
	 
	</b></pre></form>
	
</body>
</html>