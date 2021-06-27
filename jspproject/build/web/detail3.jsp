<%-- 
    Document   : detail3
    Created on : May 5, 2016, 7:45:13 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,pojo.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="newcss.css" type="text/css"/>  
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        
        
        <% 
        
        String c=request.getParameter("cata");
        String n=request.getParameter("pid");
        
        
        ArrayList<Pojoclass> list = getData(c,n);	
        Iterator<Pojoclass> itr = list.iterator();
        
        
        while(itr.hasNext())
{
	Pojoclass cust = (Pojoclass)itr.next();
%>
<!--<div style="margin-top: 100px;">-->
<center>  <img src="<%="upload"+"\\"+cust.getA()%>" width='250px'><br>
          <label style="color:blue;"><%=cust.getB()%></label><br>
          </center>
          </div><center>
          <table id="features-tab">
          <tr><td><label>Price:</label></td><td><label>- <%=cust.getC()%></label></td></tr><br>
           <tr><td> <label >Ideal For:</label></td><td><label>- <%=cust.getD()%></label> </td></tr>
           <tr><td> <label >Fit:</label></td><td><label>- <%=cust.getE()%></label> </td></tr>
           <tr><td> <label>Package Contents:</label></td><td><label>- <%=cust.getF()%></label> </td></tr>
           <tr><td> <label>Fabric:</label></td><td><label>- <%=cust.getG()%></label> </td></tr>
           <tr><td> <label>Sleeve:</label></td><td><label >- <%=cust.getH()%></label> </td></tr>
           
    
    
    
    
    </table>
          </center>
          <center>
                  
          <form action="buy.jsp" method="post">
                    <input type="hidden" name="pid" value="<%=n%>" style="" ><br> 
                                        <input type="text" name="cata" value="<%=c%>" style="visibility: hidden"><br> 
                            <input type="text" name="test" value="<%="null"%>" style="visibility: hidden"><br>
                    <input type="submit"  name="buy" value="Buy">
                  </form>
                  
                    </center>
                     <center>
                       
                     <form action="kart.jsp" method="post">
                         <input type="text" name="pid" value="<%=n%>" style="visibility: hidden"><br>
                       <input type="text" name="cata" value="<%=c%>" style="visibility: hidden"><br>
                    <input type="submit"  name="add" value="add to kart" >
                    </form>
                    
           </center> 

<%
		}  
        %>
        <%!
	public ArrayList<Pojoclass> getData(String t,String n)
	{	
		ArrayList<Pojoclass> list=null;
		
		Connection con=null;
		try
		{
			 Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major","root","root");
		    Statement st=con.createStatement();
		   
			String query="Select * from "+t+" where pid="+n+"";
			ResultSet set=st.executeQuery(query);
			list = new ArrayList<Pojoclass>();
			while(set.next())
			{
				Pojoclass cust = new Pojoclass();
				cust.setA(set.getString(1));
				cust.setB(set.getString(2));
				cust.setC(set.getString(3));
				cust.setD(set.getString(5));
                                cust.setE(set.getString(6));
				cust.setF(set.getString(7));
				cust.setG(set.getString(8));
				cust.setH(set.getString(9));
                                
                                
				list.add(cust);
				
			}
			
		}
		catch(Exception e)
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
	return list;
	}
	%>
         
      
         
            
        
        
         <%@include file="footer.jsp"%>
    </body>
</html>
