<%-- 
    Document   : kart
    Created on : Mar 20, 2016, 11:14:27 PM
    Author     : Rahul
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="header.jsp"%>
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
         String n=request.getParameter("pid");
         String c=request.getParameter("cata");
         
             if(a.equals("nulll")||b.equals("nulll"))
      {     request.setAttribute("ty","k");
          request.setAttribute("cata",c);
          request.setAttribute("pid",n);
          RequestDispatcher rd=request.getRequestDispatcher("alert.jsp");
	rd.forward(request,response);
      }             
 

	 Connection con;
         try
		{
			Class.forName(driver);
		
			con=DriverManager.getConnection(url,username,password);
                        Statement st=con.createStatement();
            String query="select * from "+c+" where pid='"+n+"'";
            ResultSet rs=st.executeQuery(query);
            
            rs.next();
            img=rs.getString(1);
            de=rs.getString(2);
            pt=rs.getString(3);
                        
            PreparedStatement ps1=con.prepareStatement("insert into kart(path,descp,price,pid,email,pass,cata) values(?,?,?,?,?,?,?)");
            ps1.setString(1,img);
            ps1.setString(2,de);
            ps1.setString(3,pt);
            ps1.setString(4,n);
            ps1.setString(5,a);
            ps1.setString(6,b);
            ps1.setString(7,c);

            int i1=ps1.executeUpdate(); 
        
            if(i1>0)
            {
          
           response.sendRedirect("kart2.jsp");
           
            }   
       
	    }

		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	
        %>
         <%@include file="footer.jsp"%>
    </body>
</html>
