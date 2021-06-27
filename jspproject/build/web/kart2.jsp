<%-- 
    Document   : kart2
    Created on : Mar 25, 2016, 9:30:23 PM
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
        int p,rate=0,r,id,i;
        %>
        <%
             String img,de,pt,pid;
             
         String username="root";
	 String password="root";
	 String driver="com.mysql.jdbc.Driver";
	 String url="jdbc:mysql://localhost:3306/major";
         String a=(String)session.getAttribute("email");
         String b=(String)session.getAttribute("pass");
        String c="null";
         
	 Connection con;
         try
		{
			Class.forName(driver);
		
			con=DriverManager.getConnection(url,username,password);
                        Statement st=con.createStatement();
           
          
            String query1="select * from kart where email='"+a+"'";
            ResultSet rs1=st.executeQuery(query1);
         
           while(rs1.next())
           {
            img=(String)rs1.getString(1);
            de=(String)rs1.getString(2);
            p=Integer.parseInt(rs1.getString(3));
            pid=rs1.getString(4);
            id=rs1.getInt(7);
            
            rate=rate+p; 
           
        %>     
        
            <table border="0" width="80%" align="center"> 
                <tr><td><center>
                        <img src="<%="upload"+"\\"+img%>" width='250px'><br>
                        <label style="color:blue; text-decoration:none;"><%=de%></label><br>
                        <label style="color:blue;">Price:<%=p%></label><br>
                        <a style="text-decoration:none;" href="remove.jsp?pid=<%=pid%>&id=<%=id%>">remove</a>
                </center></td>
                        
                    
         
         
         <%
         
         if(rs1.next())
         {
             img=(String)rs1.getString(1);
             de=(String)rs1.getString(2);
              p=Integer.parseInt(rs1.getString(3));
            pid=rs1.getString(4);
            id=rs1.getInt(7);
            
            rate=rate+p;
             %>
           
             
                <td><center>
                             <img src="<%="upload"+"\\"+img%>" width='250px'><br>
          <label style="color:blue;"><%=de%></label><br>
                    <label style="color:blue;">Price:<%=p%></label><br>
                 <a style="text-decoration:none;" href="remove.jsp?pid=<%=pid%>&id=<%=id%>">remove</a>
                </center></td>
         
                   
         </tr>
        <%    
         }
         %>
       
<!--        <form action="paymeny.jsp" method="post">
            
        </form>-->
         <% 
           } 
           if(rate!=0)
           {
           rate=rate+40;
           }
           else
           {
               %>
<!--              out.println("your kart is empty");-->
               <lable style="margin-left:700px;">Your Kart is Empty</lable>
            <% 
           }
           %>
         </table>
       
        <br><lable style="margin-left:620px;">total price:<%=rate%></lable>
        <div style="text-align: center;">
        <form action="buy.jsp" method="post">
        <input type="text" name="test" value="<%="test"%>" style="visibility: hidden"><br>
                <input type="text" name="rate" value="<%=rate%>" style="visibility: hidden"><br>
                <input type="text" name="cata" value="<%=c%>" style="visibility: hidden"><br>
        <input type="submit" value="buy">
        </form>
        </div >
        <%
               
       rate=0;
      
	    }

		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	
        %>
        <%@include file="footer.jsp"%>
    </body>
</html>
