<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
<style>
	h1{background:blue;color:yellow;font-size:50px;border:2px solid yellow;text-align:center;}
	th{border:3px solid blue;width:400px;height:300px;font-size:20px;}
	th:hover{background:lightgray;}
	h2{background:blue;text-align:center;}
</style><script>
         function show()
         {
        	 alert("You are not Authorised..");
        	 document.getElementById("r1").focus();
         }
</script>
</head>
<body>
<h1>Student Management System</h1>
<table>
<tr>
	<th>Register<br><form action="regaction.jsp"><pre>
	User Name<input type="text" name="un" required>
	Password <input type="password" name="p" required>
	RegNo    <input type="number" name="rn" required>
	Email    <input type="text" name="em" required>
	Mobile No<input type="text" name="m" required>
	Branch   <input type="text" name="b" required><br>
	Role     <input type="radio" name="r" value="admin" onclick="show()">Admin <input type="radio" name="r" value="student" onclick=window.location="studview.jsp" >Student
			<input type="submit" value="SignUp"> </pre></form></th>
			<th><img src="Adminicon.png"></th>
	<th>Login<br><form action="loginaction.jsp"><pre>
	
	UserName  <input type="text" name="un"  required>
	Password  <input type="password" name="p" required><br>
	    <input type="submit" value="SignIn"></pre></form></th></tr>
	    
</table>
<br><br><h2> Developed By IT</h2>
</body>
</html>