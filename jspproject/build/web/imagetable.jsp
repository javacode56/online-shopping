<%-- 
    Document   : imagetable
    Created on : Mar 13, 2016, 8:35:12 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="newcss.css">
        <%@include file="header.jsp"%> 
    </head>
    <body>
        
 

        
         <% 
             
             String img,de,buy="null",pid,price;
            String c=request.getParameter("cata");
          
        %>  
         <%
            Connection con;
            try
            {
             
        String path=(String)application.getRealPath("/upload");
            Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major","root","root");
            Statement st=con.createStatement();
            String query="select * from "+c+"";
            ResultSet rs=st.executeQuery(query);
         //  out.println(c);
           while(rs.next())
           {
            
            
            
            
        %>  
        <table   align="center" style="margin-top: 0px;"> 
        <%
            
            if(c.equals("mobile"))
            {
                img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
            %>
            
                <tr><td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none ">
                        <img src="<%="upload"+"\\"+img%>"  id="pro-img"><br>
                        <label style="color:blue;" id="pro-name"><%=de%></label><br></a>
                        <label style="color:blue;" id="pro-price">Price:<%=price%></label><br></center></td>
         
                    
         
        <%
            } 
        %>
        
        <%
            
            if(c.equals("tab"))
            {
                img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
            %>
<!--            <table border="0" width="80%" align="center" style="margin-top: 0px;"> -->
                <tr><td><center><a href="detail1.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none ">
                        <img src="<%="upload"+"\\"+img%>"   id="pro-img"><br>
                        <label style="color:blue;"><%=de%></label><br></a>
                        <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <%
            } 
        %>
         
        <%
            
            if(c.equals("jeans"))
            {
                img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
            %>
<!--            <table border="0" width="80%" align="center" style="margin-top: 0px;"> -->
                <tr><td><center><a href="detail2.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none ">
                        <img src="<%="upload"+"\\"+img%>"   id="pro-img"><br>
                        <label style="color:blue;"><%=de%></label><br></a>
                        <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <%
            } 
        %>
        
        <%
            
            if(c.equals("tshirt"))
            {
                img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
            %>
<!--            <table border="0" width="80%" align="center" style="margin-top: 0px;"> -->
                <tr><td><center><a href="detail3.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none ">
                        <img src="<%="upload"+"\\"+img%>"  id="pro-img"><br>
                        <label style="color:blue;"><%=de%></label><br></a>
                        <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <%
            } 
        %>
        
        <%
            
            if(c.equals("child"))
            {
                img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
            %>
<!--            <table border="0" width="80%" align="center" style="margin-top: 0px;"> -->
                <tr><td><center><a href="detail4.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none ">
                        <img src="<%="upload"+"\\"+img%>"  id="pro-img"><br>
                        <label style="color:blue;"><%=de%></label><br></a>
                        <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <%
            } 
        %>
         
        <%
            
            if(c.equals("school"))
            {
                img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
            %>
<!--            <table border="0" width="80%" align="center" style="margin-top: 0px;"> -->
                <tr><td><center><a href="detail5.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none ">
                        <img src="<%="upload"+"\\"+img%>"  id="pro-img"><br>
                        <label style="color:blue;"><%=de%></label><br></a>
                        <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <%
            } 
        %>
        
        
         
         <%
         
         if(rs.next())
         {    
             
             if(c.equals("mobile"))
             {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             %>
           
             
           <td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>"  id="pro-img"><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <% //out.println(price);   
         }
             
             
             
              if(c.equals("tab"))
             {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             %>
           
             
           <td><center><a href="detail1.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>"  id="pro-img"><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <%    
         }
             
          
          if(c.equals("jeans"))
             {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             %>
           
             
           <td><center><a href="detail2.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>"   id="pro-img"><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <% //out.println(price);   
         }    
             
          if(c.equals("tshirt"))
             {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             %>
           
             
           <td><center><a href="detail3.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>"   id="pro-img"><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <% //out.println(price);   
         }    
             
             
              if(c.equals("child"))
             {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             %>
           
             
           <td><center><a href="detail4.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>"   id="pro-img"><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>     
         
        <% //out.println(price);   
         }
              
              
           if(c.equals("school"))
             {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             %>
           
             
           <td><center><a href="detail5.jsp?pid=<%=pid%>&cata=<%=c%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>" id="pro-img"><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         </tr>
        <% //out.println(price);   
         }   
             
             
             
             
             
         }
         %>
         <% }
           %>
        </table>
         <%
                  
         }
		catch(Exception e)
		{
			System.out.println(e);
		}

         %>
         
         
         
            
        <%@include file="footer.jsp"%> 
    </body>
</html>
