<%-- 
    Document   : test
    Created on : Sep 2, 2019, 8:59:39 PM
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
        <table border="1">
        <%

Connection con=null;
try
{	
	 Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major","root","root");
		    Statement st=con.createStatement();
		   
			String query="Select * from customer";
			ResultSet set=st.executeQuery(query);
	
	
        while(set.next())
        {
	%>

	
	<tr><td><%=set.getString(1) %></td><td><%=set.getString(2) %></td></tr>	


        
	<%
 	
}
        
        
            
}catch(Exception e)
{
	System.out.println(e);
}
finally
{
	try
	{
		con.close();
	}
	catch(Exception e)
	{
		System.out.println(e);
	}	
}
%>
</table>
    </body>
</html>
