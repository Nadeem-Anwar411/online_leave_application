<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Welcome</title>
<style>
	h1{background:blue;color:white;font-size:50px;border:2px solid yellow;text-align:center;}
	th{border:3px solid black;width:200px;height:50px;font-size:20px;}
	th:hover{background:lightgray;color:blue;}
	img{position:absolute;top:190px;left:700px;border:2px solid blue;}
	body{background:linear-gradient(skyblue,white,skyblue);}
	
</style>
<script language="javaScript">
	var i=0;
	path=["pic1.jpg","pic2.jpg","pic3.jpg","pic4.jpg","pic5.jpg","pic6.jpg"];
	function swapImage()
	{
		document.slide.src=path[i];
		if(i< path.length -1)
			i++;
		else
			i=0;
		setTimeout("swapImage()",2000);
	}
		swapImage();
</script>
</head>
<body onload="swapImage();">
<h1>ONLINE LEAVE APPLICATION</h1>
<table>
	<tr><th onclick=window.location="addstud.jsp">Add Student</th></tr>
	<tr><th onclick=window.location="view.jsp">View Student</th></tr>
	<tr><th onclick=window.location="enquiry.jsp">Enquiry</th></tr>
	<tr><th onclick=window.location="ViewApplication.jsp">View Application</th></tr>
	<tr><th onclick=window.location="delstud.jsp">Delete Student</th></tr>
	<tr><th onclick=window.location="ViewFeedBack.jsp">View FeedBack</th></tr>
	<tr><th onclick=window.location="main.html">Logout</th></tr>
</table>
<img src="pic1.jpg" name="slide"  width="350"  height="300">
</body>
</html>