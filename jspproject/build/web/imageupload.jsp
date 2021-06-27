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
           String b=m.getParameter("pname");
           String c=m.getParameter("price");
           String d=m.getParameter("pid");
           String e=m.getParameter("aa");
           String f=m.getParameter("bb");
           String g=m.getParameter("cc");
           String h=m.getParameter("dd");
           String ii=m.getParameter("ee");
           String j=m.getParameter("ff");
           String k=m.getParameter("gg");
           String l=m.getParameter("hh");
           String mm=m.getParameter("ii");
           

           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major","root","root");
            Statement st=con.createStatement();
            
            
             PreparedStatement ps=con.prepareStatement("insert into mobile values(?,?,?,?,?,?,?,?,?,?,?,?,?)");  
	  
	  
	ps.setString(1,a);
        ps.setString(2,b);
        ps.setString(3,c);
        ps.setString(4,d);
        ps.setString(5,e);
        ps.setString(6,f);
        ps.setString(7,g);
        ps.setString(8,h);
        ps.setString(9,ii);
        ps.setString(10,j);
        ps.setString(11,k);
        ps.setString(12,l);
        ps.setString(13,mm);
        
        

	int i1=ps.executeUpdate(); 
        
        
	if(i1>0) 
        {
	out.print("Work is Completed");
        }     
                       
            
            }
            catch(Exception e)
            {}


       %>	