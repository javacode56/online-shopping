<%-- 
    Document   : header.jsp
    Created on : Mar 11, 2016, 11:19:37 AM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" type="text/css" href="newcss.css">

        <style>
           
            
            
        
ul {
	
    list-style-type: none;
    margin: 0;
    padding:0px;
    overflow: hidden;
    background-color: #333;
    padding-bottom:3px;
    width:100%;
    top:0;
    z-index:1;
   
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>
    </head>
    <body>
        



<%  
    
    String email=(String)session.getAttribute("email");
    
    
   %>
   
<div style="position:fix; width:100%; top:0; margin-bottom:0px;">
<ul>
  <li class="dropdown">
      <a href="#" class="dropbtn">Electronics</a>
      <div class="dropdown-content"  style="z-index:1">
          <a href="imagetable.jsp?cata=mobile">Mobile</a>
	<a href="imagetable.jsp?cata=tab">Tablets</a>   
      </div>
  </li>
  <li class="dropdown">
      <a href="#" class="dropbtn">Cloths</a>
      <div class="dropdown-content"  style="z-index:1">
        <a href="imagetable.jsp?cata=jeans">Jeans</a>
        <a href="imagetable.jsp?cata=tshirt">T-Shirts</a>
      </div>
  </li>
 
  <li class="dropdown">
    <a href="#" class="dropbtn">Books</a>
    <div class="dropdown-content"  style="z-index:1">
      <a href="imagetable.jsp?cata=child">Children</a>
      <a href="imagetable.jsp?cata=school">High-School</a>
    </div>
  </li>
  
   
   <%
    
     if(email!="nulll")
    {       out.println();
            out.println();
            out.println();
        
%>      
<li class="active"><a href="kart2.jsp">Kart</a></li>
<li style="float:right;" class="active"><a href="logout.jsp">Sign Out</a></li>
<%
    }
%> 
</ul>
</div>



 







    </body>
</html>
