<%-- 
    Document   : register
    Created on : Feb 25, 2016, 11:08:23 PM
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
         <%
         String username="root";
	 String password="root";
	 String driver="com.mysql.jdbc.Driver";
	 String url="jdbc:mysql://localhost:3306/major";
         String a=request.getParameter("t3");
         String b=request.getParameter("t4");
         
	 Connection con;
         try
		{
			Class.forName(driver);
		
			con=DriverManager.getConnection(url,username,password);
                        
                       PreparedStatement ps=con.prepareStatement("insert into customer values(?,?)");  
	  
	  
	ps.setString(1,a);
        ps.setString(2,b);

	int i=ps.executeUpdate(); 
        
        
	if(i>0)  
	out.print("You have successfully registered...");  
	      
                       
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	
        %>
    </body>
</html>
