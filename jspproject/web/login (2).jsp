<%-- 
    Document   : login
    Created on : Feb 25, 2016, 11:54:01 AM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
        <a href="feedback.jsp">give your feedback</a>
       <%
         String username="root";
	 String password="root";
	 String driver="com.mysql.jdbc.Driver";
	 String url="jdbc:mysql://localhost:3306/major";
         String email=request.getParameter("t1");
         String pass=request.getParameter("t2");
         
         String type=request.getParameter("type");
         String c=request.getParameter("cata");
        String n=request.getParameter("pid");
         
	 Connection con;
         try
		{
			Class.forName(driver);
		
			con=DriverManager.getConnection(url,username,password);
                        String query="select * from customer where name='"+email+"'";
                        Statement ps=con.createStatement();
                        ResultSet st=ps.executeQuery(query);
                        st.next();
                        String as=st.getString(1);
                           String bs=st.getString(2);
                           
                           if(email.equals(as)&& pass.equals(bs))
                           {
                               
                             session.setAttribute("email", email);
                             session.setAttribute("pass", pass);
                             if(type.equals("h"))
                             {
                                 request.setAttribute("cata","nulll");
                                request.setAttribute("pid","nulll");
                                    request.setAttribute("ty","nulll");
                              RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
                                rd.forward(request,response);
                           }
                             if(type.equals("b")&&c.equals("mobile"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail.jsp");
                                rd.forward(request,response);
                             }
                             if(type.equals("k")&&c.equals("mobile"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail.jsp");
                                rd.forward(request,response);
                             }
                             
                             
                             if(type.equals("b")&&c.equals("tab"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail1.jsp");
                                rd.forward(request,response);
                             }
                             if(type.equals("k")&&c.equals("tab"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail1.jsp");
                                rd.forward(request,response);
                             }
                             
                             
                             if(type.equals("b")&&c.equals("child"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail4.jsp");
                                rd.forward(request,response);
                             }
                             if(type.equals("k")&&c.equals("child"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail4.jsp");
                                rd.forward(request,response);
                             }
                             
                             
                             if(type.equals("b")&&c.equals("school"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail5.jsp");
                                rd.forward(request,response);
                             }
                             if(type.equals("k")&&c.equals("school"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail5.jsp");
                                rd.forward(request,response);
                             }
                             
                             
                             if(type.equals("b")&&c.equals("jeans"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail3.jsp");
                                rd.forward(request,response);
                             }
                             if(type.equals("k")&&c.equals("jeans"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail3.jsp");
                                rd.forward(request,response);
                             }
                             
                              if(type.equals("b")&&c.equals("tshirt"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail2.jsp");
                                rd.forward(request,response);
                             }
                             if(type.equals("k")&&c.equals("tshirt"))
                             {
                                 request.setAttribute("cata",c);
                                     request.setAttribute("pid",n);
                                     RequestDispatcher rd=request.getRequestDispatcher("detail2.jsp");
                                rd.forward(request,response);
                             }
                             
                             
                             
                             
                             
                             
                                }
                           else
                           {
                             out.println("wrong username or password");
                             RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
                                rd.forward(request,response);

                           }
                       
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	
        %>
    </body>
</html>
