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
</style>
</head>
<body>
<div class="container">
<form action="feedback.jsp" method="post">
<CENTER>

<h1><u>FEEDBACK FORM</u> </h1></CENTER><br>
Name Of Student		: <input type="text" name="username" size="25" required><br /><br />

Branch & Sec        : <input type="text" name="bs" size="25" required><br /><br />

Feedback Area              : <input type="text" name="fa" size="20" required><br /><br />


<center><input type = "Submit" Value="Submit"></center>
</form>
</div>
</body>
</html>