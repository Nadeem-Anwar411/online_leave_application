<%@ page language="java" import="java.sql.*"%>

<%

    String name = request.getParameter("regid");

    String pass = request.getParameter("pw");

    try {

        Class.forName("oracle.jdbc.driver.OracleDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "system");

        PreparedStatement ps = con.prepareStatement("select REGISTRATION,PASSWORD from regiidate where REGISTRATION=? and PASSWORD=?");

        ps.setString(1, name);

        ps.setString(2, pass);

        ResultSet rs = ps.executeQuery();

        int x = 0;

        while (rs.next()) {

            if (rs.getString(1).equals(name) && rs.getString(3).equals(pass)) {

                x = 1;

            } else {

                x = 2;

            }

        }

        if (x == 1) {

 

%>

<jsp:include page="logout.jsp"/>

<%                HttpSession s = request.getSession();

    out.println("<center><h1>Welcome: " + name + "</h1>");

    out.println("<br/><b>You are successfully login........ ");

} else {

    out.println("<center>" + "<b>Either You Enter Wrong UserName or Password</b>");

%>

<jsp:include page="studentlogin.html"/>

<%}

 

    } catch (Exception ex) {

        out.println(ex);

    } 

%>

