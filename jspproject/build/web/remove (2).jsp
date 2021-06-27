<%-- 
    Document   : remove
    Created on : Mar 25, 2016, 8:22:48 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%!
        int p,rate=0,r;
        %>
        <%
             String img,de,pt,pid;
         String username="root";
	 String password="root";
	 String driver="com.mysql.jdbc.Driver";
	 String url="jdbc:mysql://localhost:3306/major";
         String a=(String)session.getAttribute("email");
         String b=(String)session.getAttribute("pass");
         String c=request.getParameter("pid");
         String id=request.getParameter("id");
         
         
         
	 Connection con;
         try
		{
			Class.forName(driver);
		
			con=DriverManager.getConnection(url,username,password);
                        
            String query="delete from kart where pid='"+c+"' and email='"+a+"' and id='"+id+"'";
            Statement ps=con.createStatement();
	int st=ps.executeUpdate(query);
            
          
        
            if(st>0)
            {
          
           response.sendRedirect("kart2.jsp");
           
            }   
       
	    }

		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	
        %>
    </body>
</html>
