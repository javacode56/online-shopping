<%-- 
    Document   : payment
    Created on : Mar 20, 2016, 1:48:42 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="newcss.css">
         <%@include file="header.jsp"%>
    </head>
    <body>
       
         <%! 
        int pt,pr,p,rate=0,r,id,i;  %>
        <%
        String n=request.getParameter("pid");
        String c=request.getParameter("cata");
        Calendar cal=Calendar.getInstance();
        int day=cal.get(Calendar.DATE);
        int mon=cal.get(Calendar.MONTH)+1;
        int year=cal.get(Calendar.YEAR);
        day=day+2;
        if(day==30)
        {
            day=2;
            mon++;
        }
        if(day==31)
        {
            day=3;
            mon++;
        }
        
           
         if(n.equals("null"))
            {
              String img,de,pt,pid;
             String a=(String)session.getAttribute("email");
         String b=(String)session.getAttribute("pass");
         
          String m=request.getParameter("payment");
       String pr2=request.getParameter("pr1");
       String addr=request.getParameter("addr");
           Connection con;
            try
            {
                
            
        String path=(String)application.getRealPath("/upload");
            Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major","root","root");
            Statement st=con.createStatement();
            String query="select * from kart where email='"+a+"'";
            ResultSet rs=st.executeQuery(query);
         //  out.println(c);
            
            %>
            <%
             if(m.equals("debit")||m.equals("credit"))
             {
             %>
                
        <form action="payment2.jsp" method="post">
         <center><lable style="color:blue;">Expected day of delivery=<%=day%>/<%=mon%>/<%=year%></lable> <br>
             <lable style="color:blue;"></lable><input type="password" name="t1" id="address" palceholder="please enter your card number">
                <input type="submit" id="submit" value="pay">
                <input type="text" name="payment" value="<%=m%>" style="visibility: hidden"><br>
                <input type="text" name="pr3" value="<%=pr2%>" style="visibility: hidden"><br>
                <input type="text" name="addr" value="<%=addr%>" style="visibility: hidden"><br>
                <input type="text" name="pid" value="<%="null"%>" style="visibility: hidden"><br>
                <input type="text" name="cata" value="<%=c%>" style="visibility: hidden"><br>
    </center>
             </form>
           <%
             }
                 else
                 {
                     
                 // response.sendRedirect("payment2.jsp");       
                         
                 
           %>  
           <form action="payment2.jsp" method="post">
              <center> <lable >Expected day of delivery=<%=day%>/<%=mon%>/<%=year%></lable><br>
                <input type="password" name="t1" style="visibility: hidden">
                <input type="submit" value="buy now">
                <input type="text" name="payment" value="<%=m%>" style="visibility: hidden"><br>
                <input type="text" name="pr3" value="<%=pr2%>" style="visibility: hidden"><br>
                <input type="text" name="addr" value="<%=addr%>" style="visibility: hidden"><br>
                <input type="text" name="pid" value="<%="null"%>" style="visibility: hidden"><br>
                <input type="text" name="cata" value="<%=c%>" style="visibility: hidden"><br>
    </center>
           </form>
            <%
                         }
            %>
            
            
            
            <%
           while(rs.next())
           {
            img=(String)rs.getString(1);
            de=(String)rs.getString(2);
            p=Integer.parseInt(rs.getString(3));
           // pid=rs.getString(4);
           
           // out.println("hello rahul");        
        %>     
           
             
        
        
        
            <table border="0" width="80%" align="center"> 
                <tr><td><center>
                        <img src="<%="upload"+"\\"+img%>" width='250px'><br>
                        <label style="color:blue;"><%=de%></label><br>
                        <label style="color:blue;">Price:<%=p%></label><br></center></td>
         
                    
         
         
         <%
        // out.println(price);
         if(rs.next())
         {
             img=(String)rs.getString(1);
            de=(String)rs.getString(2);
            p=Integer.parseInt(rs.getString(3));
            pid=rs.getString(4);
             %>
           
             
           <td><center>
                             <img src="<%="upload"+"\\"+img%>" width='250px'><br>
          <label style="color:blue;"><%=de%></label><br>
                    <label style="color:blue;">Price:<%=p%></label><br></center></td>
         
                    
         </tr>
        <% //out.println(price);   
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
            }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
            else
            {
             String img,de,pt;
        
       String m=request.getParameter("payment");
       String pr2=request.getParameter("pr1");
       String addr=request.getParameter("addr");
 
        try
        {
            
            
            Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major","root","root");
            Statement st=con.createStatement();
            String query="select * from "+c+" where pid='"+n+"'";
            ResultSet rs=st.executeQuery(query);
            
            rs.next();
            img=rs.getString(1);
            de=rs.getString(2);
            pt=rs.getString(3);
            %> 
             <%
             if(m.equals("debit")||m.equals("credit"))
             {
             %>
  
        <form action="payment2.jsp" method="post">
         <center> <lable >Expected day of delivery=<%=day%>/<%=mon%>/<%=year%></lable> <br>
             <lable style="color:blue;"></lable><input type="password" name="t1" id="address" palceholder="please enter your card number"/><br>
             <input type="submit" value="pay" id="submit" style="margin-left: 180px;">
                <input type="text" name="payment" value="<%=m%>" style="visibility: hidden"><br>
                <input type="text" name="pr3" value="<%=pr2%>" style="visibility: hidden"><br>
                <input type="text" name="addr" value="<%=addr%>" style="visibility: hidden"><br>
                <input type="text" name="pid" value="<%=n%>" style="visibility: hidden"><br>
                <input type="text" name="cata" value="<%=c%>" style="visibility: hidden"><br>
    </center>
             </form>
           <%
             }
                 else
                 {
                     
                 // response.sendRedirect("payment2.jsp");       
                         
                 
           %>  
           <form action="payment2.jsp" method="post">
               <lable style="color:blue;">Expected day of delivery=<%=day%>/<%=mon%>/<%=year%></lable><br>
                <input type="password" name="t1" style="visibility: hidden">
                <input type="submit" value="buy now">
                <input type="text" name="payment" value="<%=m%>" style="visibility: hidden"><br>
                <input type="text" name="pr3" value="<%=pr2%>" style="visibility: hidden"><br>
                <input type="text" name="addr" value="<%=addr%>" style="visibility: hidden"><br>
                <input type="text" name="pid" value="<%=n%>" style="visibility: hidden"><br>
                <input type="text" name="cata" value="<%=c%>" style="visibility: hidden"><br>
    </center>
           </form>
            <%
                         }
            %> 
             
        <center>  <img src="<%="upload"+"\\"+img%>" width='250px'><br>
          <label style="color:blue;"><%=de%></label><br>
                    <label style="color:blue;">Price:<%=pt%></label><br>
                    
        </center>    
        <%
        }
		catch(Exception e)
		{
			System.out.println(e);
		}
       
            }
            
          
           
        %>
         
    <%@include file="footer.jsp"%>
    </body>
</html>
