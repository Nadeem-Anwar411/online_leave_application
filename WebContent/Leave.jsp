<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="Allpage.jsp"></jsp:include>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  .container{
      width:500px;
      clear:both;
  }
  .container input{
     width:100%;
     clear:both;
  }
  #b
  {
  background-color:GREEN;
  }
</style>
</head>
<body>
<div class="container">
<form action="Leaveconn.jsp" method="post">
<CENTER>

<h2><u>LEAVE APPLICATION FORM</u> </h2></CENTER><br>
Name Of Student		: <input type="text" name="username" size="25" required><br /><br />

Branch & Sec        : <input type="text" name="bs" size="25" required><br /><br />

Period              : <input type="text" name="per" size="20" required><br /><br />

from                : <input type="text" name="sd" size="20" required><br /><br /> 
To                  : <input type="text" name="ed" size="20" required><br /><br />

Purpose Of Leave    : <input type="text" name="pl" size="20" required><br /><br />
Home Address        : <input type="text" name="ha" size="50" required><br /><br />
Parent's Mobile No. : <input type="number" name="mob" size="50" required><br /><br />
<center><input type = "Submit" Value="SUBMIT" id="b"></center>







</form>
</div>
</body>
</html>