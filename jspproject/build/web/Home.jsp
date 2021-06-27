


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="newcss.css" type="text/css"/>
      <style>
          h1{
              text-align: center;
              color:red;
              margin-top: 0px;
              margin-bottom: 5px;
              
          }
          </style>
    

    </head>
    <body>  
        
            <h1>ShopMart.com</h1>
       
        <%@include file="header.jsp"%>
       <%
       String email1=(String)session.getAttribute("email");
        String pp;
        
        String c=(String)request.getAttribute("cata");
         String n=(String)request.getAttribute("pid");
         String typ=(String)request.getAttribute("ty");
         if(c.equals("nulll")||n.equals("nulll"))
         {
             typ="h";
         }
if(email1.equals("nulll"))
    {
        
%>        
            <div id="ax">
                <div id="invi">
                    
            register here:
        <form action="register.jsp" method="post" id="reg">
            userid: <input id="tet" type="text" name="t3"><br>
            password:<input id="tet" type="password" name="t4">
           <input id="tet"  type="submit">
           </form>
                </div></div>
            
            <div id="ax1" >
                <div id="invi">
                  
        login here:
       <form action="login.jsp" method="post" id="log">
            userid: <input id="tet" type="text" name="t1"><br>
           password:<input id="tet" type="password" name="t2">
           <input id="tet" type="submit">
             <input type="text" name="type" value="<%=typ%>" style="visibility: hidden">
           <input type="text" name="cata" value="<%=c%>" style="visibility: hidden">
             <input type="text" name="pid" value="<%=n%>" style="visibility: hidden">
           </form>  
        </div> </div>
                
   <%
    }

%>  
   <%
        Connection con;
            try
            {
                String img,de,buy="null",pid,price;
            
        String path=(String)application.getRealPath("/upload");
            Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major","root","root");
            Statement st=con.createStatement();
            String query="select * from mobile";
            ResultSet rs=st.executeQuery(query);
         //  out.println(c);
           if(rs.next())
           {
            img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
           // out.println("hello rahul");        
        %>    
        
        
        <div style="margin-top:110px; text-align:center; background-color: skyblue; font-family: sans-serif;">
               <lable> Mobiles</lable>
               </div>
        <div id="fe">
            <table border="0" width="80%" align="center" style="margin-top: 10px;"> 
                <tr><td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%="mobile"%>" style="text-decoration:none ">
                        <img src="<%="upload"+"\\"+img%>" width='70px'><br>
                        <label style="color:blue;"><%=de%></label><br></a>
                        <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
         
         <%
           }
         if(rs.next())
         {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             %>
           
             
           <td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%="mobile"%>" style="text-decoration:none;">
                             <img src="<%="upload"+"\\"+img%>" width='70px'><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <% //out.println(price);   
         }
         
         if(rs.next())
         {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             %>
           
             
           <td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%="mobile"%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>" width='70px'><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
        
        <% //out.println(price);   
         }
         
         
         
          if(rs.next())
         {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             %>
           
             
           <td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%="mobile"%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>" width='70px'><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <% //out.println(price);   
         }
         
            if(rs.next())
         {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             %>
           
             
           <td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%="mobile"%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>" width='70px'><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         </tr>
        <% //out.println(price);   
         }
          
          
          
          
          
          
         
         
           %>
        </table>
        </div>
        
        
        <%
            String query1="select * from tab";
            ResultSet rs1=st.executeQuery(query1);
        if(rs1.next())
           {
            img=rs1.getString(1);
             de=rs1.getString(2);
             price=rs1.getString(3);
            pid=rs1.getString(4);
           // out.println("hello rahul");        
        %>     <div style="margin-top:10px; text-align:center; background-color: skyblue; font-family: sans-serif;">
               <lable> TABLETS</lable>
               </div>
               <div id="fe">
            <table border="0" width="80%" align="center" style="margin-top: 10px;"> 
                <tr><td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%="tab"%>" style="text-decoration:none ">
                        <img src="<%="upload"+"\\"+img%>" width='70px'><br>
                        <label style="color:blue;"><%=de%></label><br></a>
                        <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
         
         <%
           }
         if(rs1.next())
         {
             img=rs1.getString(1);
             de=rs1.getString(2);
             price=rs1.getString(3);
            pid=rs1.getString(4);
             %>
           
             
           <td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%="tab"%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>" width='70px'><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <% //out.println(price);   
         }
         
         if(rs1.next())
         {
             img=rs1.getString(1);
             de=rs1.getString(2);
             price=rs1.getString(3);
            pid=rs1.getString(4);
             %>
           
             
           <td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%="tab"%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>" width='70px'><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
        
        <% //out.println(price);   
         }
         
         
         
          if(rs1.next())
         {
             img=rs1.getString(1);
             de=rs1.getString(2);
             price=rs1.getString(3);
            pid=rs1.getString(4);
             %>
           
             
           <td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%="tab"%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>" width='70px'><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         
        <% //out.println(price);   
         }
         
            if(rs1.next())
         {
             img=rs1.getString(1);
             de=rs1.getString(2);
             price=rs1.getString(3);
            pid=rs1.getString(4);
             %>
           
             
           <td><center><a href="detail.jsp?pid=<%=pid%>&cata=<%="tab"%>" style="text-decoration:none">
                             <img src="<%="upload"+"\\"+img%>" width='70px'><br>
          <label style="color:blue;"><%=de%></label><br></a>
                    <label style="color:blue;">Price:<%=price%></label><br></center></td>
         
                    
         </tr>
        <% //out.println(price);   
         }
      
         
           %>
        </table>
        </div>
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
