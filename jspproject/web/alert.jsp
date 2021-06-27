<%-- 
    Document   : alert
    Created on : Apr 9, 2016, 10:53:29 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" type="text/css" href="newcss.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="text-align:center; font-size: 50px;">
    <lable id="ïnfo"><%  out.println("Please login before buy any item."); %></lable>
        </div>    
    <%
       
        String c=(String)request.getAttribute("cata");
         String n=(String)request.getAttribute("pid");
         String typ=(String)request.getAttribute("ty");
        
        %>
         <div style="text-align:center;">
        <form action="alert2.jsp" method="post">
            <input type="submit"   value="continue" id="cont">
                         <input type="text" name="pid" value="<%=n%>" style="visibility: hidden"><br>
                       <input type="text" name="cata" value="<%=c%>" style="visibility: hidden"><br>
                       <input type="text" name="ty" value="<%=typ%>" style="visibility: hidden"><br>
                       
                    <br>
                    </form>
                       </div>
    </body>
</html>
