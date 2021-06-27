<%-- 
    Document   : logout
    Created on : Mar 9, 2016, 5:18:56 PM
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
        <%@page import="javax.servlet.http.HttpSession"%>
        <%
           if(session.getAttribute("email")!=null)
           {
            session.invalidate();
            response.sendRedirect("index.jsp");
           }
        %>
         
    </body>
</html>
