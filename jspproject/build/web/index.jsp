<%-- 
    Document   : index.jsp
    Created on : Mar 1, 2016, 3:01:42 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String email1="nulll";
            session.setAttribute("email", email1);
            session.setAttribute("pass", "nulll");
          request.setAttribute("cata","nulll");
          request.setAttribute("pid","nulll");
          request.setAttribute("ty","nulll");
          RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
	rd.forward(request,response);
        %>
    </body>
</html>
