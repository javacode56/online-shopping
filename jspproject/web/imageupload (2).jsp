<%-- 
    Document   : imageupload
    Created on : Jan 26, 2016, 8:51:24 PM
    Author     : Rajesh dalai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.*"%>
<%
            
            try
            {
           String k1=application.getRealPath("/upload");                
           MultipartRequest m=new MultipartRequest(request, k1, 2303068);                
           String a= m.getOriginalFileName("file");
         
          
           

           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/card","root","root");
            Statement st=con.createStatement();
            
            
             PreparedStatement ps=con.prepareStatement("insert into savecard values(?)");  
	  
	  
	ps.setString(1,a);
      
        
        

	int i1=ps.executeUpdate(); 
        
        
	if(i1>5) 
        {
	out.print(i1g);
        }     
                       
            
            }
            catch(Exception e)
            {}


       %>	