<%-- 
    Document   : buy.jsp
    Created on : Mar 2, 2016, 12:48:25 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="header.jsp"%>
         <link rel="stylesheet" type="text/css" href="newcss.css">
    </head>
    <body>
       
          <%! 
        int pt,pr,p,rate=0,r,id,i;  %>
        <%
        
        String a=(String)session.getAttribute("email");
         String b=(String)session.getAttribute("pass");
         String c=request.getParameter("cata");
         String n1=request.getParameter("pid");
      if(a.equals("nulll")||b.equals("nulll"))
      {     request.setAttribute("ty","b");
          request.setAttribute("cata",c);
          request.setAttribute("pid",n1);
          RequestDispatcher rd=request.getRequestDispatcher("alert.jsp");
	rd.forward(request,response);
      }
         
        
        
        
           String t=request.getParameter("test"); 
           if(t.equals("null"))
           {
             String img,de;
        String n=request.getParameter("pid");
          
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major","root","root");
        try
        {

            Statement st=con.createStatement();
            String query="select * from "+c+" where pid='"+n+"'";
            ResultSet rs=st.executeQuery(query);
            
            rs.next();
            img=rs.getString(1);
             de=rs.getString(2);
             pt=Integer.parseInt(rs.getString(3));
             if(pt<500)
             {
             pr=pt+40;    
             }
             else
             {
              pr=pt;   
             }
             
             %> 
             
                 
                <center> <lable id="pro-price">Total Price=<%=pr%></lable></center><br>
                     <center><lable id="buy-info">how would you like to pay</lable></center>

                 
                 <center>
         <div >
             <form action="payment.jsp" method="post">
 <select  name="payment" size="1">
<option value="credit">credit card</option>
<option value="debit">debit card</option>
<option value="cash">cash on delivery</option>
</select><br>
<input type="text" name="addr" placeholder="Please enter your permanent address"id="address"><br>
    <input type="submit"  name="p1" value="submit"id="submit"><br>
        <input type="text" name="pid" value="<%=n%>" style="visibility: hidden"><br>
        <input type="text" name="cata" value="<%=c%>" style="visibility: hidden"><br>
    <input type="text" name="pr1" value="<%=pr%>" style="visibility: hidden"><br>
            </form>   

             </div></center><br><br>
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
        
        
           
           
           
           
           
           
           
           
        else
        {
            String img,de,pt,pid;
             
         String pr=request.getParameter("rate");
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
        
             <center>
                 
                 <lable id="pro-price">Total Price=<%=pr%></lable><br>       
                 <lable id="buy-info">how would you like to pay</lable>
         <div >
             <form action="payment.jsp" method="post">
 <select style="color:blue;" name="payment" size="1">
<option value="credit">credit card</option>
<option value="debit">debit card</option>
<option value="cash">cash on delivery</option>
</select><br>
 <lable style="color:black;">please enter your permanent address:</lable><input type="text" name="addr">
    <input type="submit" style="color:black;" name="p1" value="submit"><br>
        <input type="text" name="pid" value="<%="null"%>" style="visibility: hidden"><br>
    <input type="text" name="pr1" value="<%=pr%>" style="visibility: hidden"><br>
    <input type="text" name="cata" value="<%=c%>" style="visibility: hidden"><br>
            </form>   

             </div></center><br><br>
             
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
                        <label style="color:black;"><%=de%></label><br>
                        <label style="color:black;">Price:<%=p%></label><br></center></td>
         
                    
         
         
         <%
        // out.println(price);
         if(rs.next())
         {
             img=(String)rs.getString(1);
            de=(String)rs.getString(2);
            p=Integer.parseInt(rs.getString(3));
           // pid=rs.getString(4);
             %>
           
             
           <td><center>
                             <img src="<%="upload"+"\\"+img%>" width='250px'><br>
          <label style="color:black;"><%=de%></label><br>
                    <label style="color:black;">Price:<%=p%></label><br></center></td>
         
                    
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
        
        %>
        
         <%@include file="footer.jsp"%>  
               
           
         
    </body>
</html>
