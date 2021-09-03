<html>
<jsp:include page="Allpage.jsp"></jsp:include>
<body bgcolor="khaki">

        <%

            session.invalidate();
        response.setHeader("Refresh","3;URL=main.html");

        %>

        <h1><font color="Red">You are Sucessfully logged out...</font></h1>

        <a href="studentlogin.html">Go-Back To Login page...</a>

    </body>

</html>