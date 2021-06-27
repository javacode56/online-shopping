<%-- 
    Document   : alert2
    Created on : Apr 10, 2016, 9:12:27 PM
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
        String c=request.getParameter("cata");
        String n=request.getParameter("pid");
        String ty=request.getParameter("ty");
        
        request.setAttribute("ty",ty);
          request.setAttribute("cata",c);
          request.setAttribute("pid",n);
          RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
	rd.forward(request,response);
        %>
        
    </body>
</html>
