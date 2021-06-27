<%-- 
    Document   : payment2.jsp
    Created on : Mar 21, 2016, 1:25:33 PM
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
        int pt,pr,p,rate=0,r,id,i;  %>
        <%
        String n=request.getParameter("pid");
         
        String img,de,pt,price,payment,em,addr,no,pass,pid,c;
      //String img,de,pt,price,payment,email,addr,no,pass;
            
        if(n.equals("null"))
        {
        
        payment=request.getParameter("payment");
        em=(String)session.getAttribute("email");
        addr=request.getParameter("addr");
        no=request.getParameter("t1");
        pass=(String)session.getAttribute("pass");
           Connection con;
            try
            {
                
            i=0;
        String path=(String)application.getRealPath("/upload");
            Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major","root","root");
            Statement st=con.createStatement();
            String query="select * from kart where email='"+em+"'";
            ResultSet rs=st.executeQuery(query);
         //  out.println(c);
            
             
            
            
            
           while(rs.next())
           {
            img=(String)rs.getString(1);
            de=(String)rs.getString(2);
            p=Integer.parseInt(rs.getString(3));
            pid=rs.getString(4);
           
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
           
           String query2="select * from kart where email='"+em+"'";
            ResultSet rs2=st.executeQuery(query2);
           
           
           
           PreparedStatement ps1=con.prepareStatement("insert into shop values(?,?,?,?,?,?,?,?)");
             while(rs2.next())
             {
                 n=rs2.getString(4);
                 price=rs2.getString(3);
                 c=rs2.getString(8);
             ps1.setString(1,em);
             ps1.setString(2,pass);
             ps1.setString(3,n);
             ps1.setString(4,price);
             ps1.setString(5,payment);
             ps1.setString(6,no);
             ps1.setString(7,addr);
             ps1.setString(8,c);
             
             int i1=ps1.executeUpdate(); 
             
            
            if(i1>0)
        {
            i=1;
	  
        }   
            else
            {
                i=2;
            }
           
           
            
            
             }
              if(i==1)
            {
//               out.print(" successfully purchased. Thank you for choosing shopmart");
                %>
            
                <lable style="margin-left:450px; color:blue;">successfully purchased. Thank you for choosing shopmart</lable>
              <%  
            }
           
           
           
         }
		catch(Exception e)
		{
			System.out.println(e);
		} 
            
        }
        
        
        
        
        
        
        
        
        
        
        
        else
        {
          
         c=request.getParameter("cata");
        price=request.getParameter("pr3");
        payment=request.getParameter("payment");
        em=(String)session.getAttribute("email");
        addr=request.getParameter("addr");
        no=request.getParameter("t1");
        pass=(String)session.getAttribute("pass");
          
                   
        
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
           
            
             PreparedStatement ps1=con.prepareStatement("insert into shop values(?,?,?,?,?,?,?,?)");
             ps1.setString(1,em);
             ps1.setString(2,pass);
             ps1.setString(3,n);
             ps1.setString(4,price);
             ps1.setString(5,payment);
             ps1.setString(6,no);
             ps1.setString(7,addr);
             ps1.setString(8,c);
             int i1=ps1.executeUpdate(); 
             
             
        %>
             
         <%    
        
	if(i1>0)
        {
            
	//out.print(" successfully purchased. Thank you for choosing shopmart");  
             %>
            
                <lable style="margin-left:450px; color:black;">successfully purchased. Thank you for choosing shopmart</lable>
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
