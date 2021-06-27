package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"newcss.css\" type=\"text/css\"/>\n");
      out.write("      <style>\n");
      out.write("          h1{\n");
      out.write("              text-align: center;\n");
      out.write("              color:red;\n");
      out.write("              margin-top: 0px;\n");
      out.write("              margin-bottom: 5px;\n");
      out.write("              \n");
      out.write("          }\n");
      out.write("          </style>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>  \n");
      out.write("        \n");
      out.write("            <h1>ShopMart.com</h1>\n");
      out.write("       \n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("                <link rel=\"stylesheet\" type=\"text/css\" href=\"newcss.css\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        \n");
      out.write("ul {\n");
      out.write("\t\n");
      out.write("    list-style-type: none;\n");
      out.write("    margin: 0;\n");
      out.write("    padding:0px;\n");
      out.write("    overflow: hidden;\n");
      out.write("    background-color: #333;\n");
      out.write("    padding-bottom:3px;\n");
      out.write("    width:100%;\n");
      out.write("    top:0;\n");
      out.write("    z-index:1;\n");
      out.write("   \n");
      out.write("}\n");
      out.write("\n");
      out.write("li {\n");
      out.write("    float: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a, .dropbtn {\n");
      out.write("    display: inline-block;\n");
      out.write("    color: white;\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 14px 16px;\n");
      out.write("    text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a:hover, .dropdown:hover .dropbtn {\n");
      out.write("    background-color: red;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li.dropdown {\n");
      out.write("    display: inline-block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content {\n");
      out.write("    display: none;\n");
      out.write("    position: absolute;\n");
      out.write("    background-color: #f9f9f9;\n");
      out.write("    min-width: 160px;\n");
      out.write("    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content a {\n");
      out.write("    color: black;\n");
      out.write("    padding: 12px 16px;\n");
      out.write("    text-decoration: none;\n");
      out.write("    display: block;\n");
      out.write("    text-align: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content a:hover {background-color: #f1f1f1}\n");
      out.write("\n");
      out.write(".dropdown:hover .dropdown-content {\n");
      out.write("    display: block;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
  
    
    String email=(String)session.getAttribute("email");
    
    
   
      out.write("\n");
      out.write("   \n");
      out.write("<div style=\"position:fix; width:100%; top:0; margin-bottom:0px;\">\n");
      out.write("<ul>\n");
      out.write("  <li class=\"dropdown\">\n");
      out.write("      <a href=\"#\" class=\"dropbtn\">Electronics</a>\n");
      out.write("      <div class=\"dropdown-content\"  style=\"z-index:1\">\n");
      out.write("          <a href=\"imagetable.jsp?cata=mobile\">Mobile</a>\n");
      out.write("\t<a href=\"imagetable.jsp?cata=tab\">Tablets</a>   \n");
      out.write("      </div>\n");
      out.write("  </li>\n");
      out.write("  <li class=\"dropdown\">\n");
      out.write("      <a href=\"#\" class=\"dropbtn\">Cloths</a>\n");
      out.write("      <div class=\"dropdown-content\"  style=\"z-index:1\">\n");
      out.write("        <a href=\"imagetable.jsp?cata=jeans\">Jeans</a>\n");
      out.write("        <a href=\"imagetable.jsp?cata=tshirt\">T-Shirts</a>\n");
      out.write("      </div>\n");
      out.write("  </li>\n");
      out.write(" \n");
      out.write("  <li class=\"dropdown\">\n");
      out.write("    <a href=\"#\" class=\"dropbtn\">Books</a>\n");
      out.write("    <div class=\"dropdown-content\"  style=\"z-index:1\">\n");
      out.write("      <a href=\"imagetable.jsp?cata=child\">Children</a>\n");
      out.write("      <a href=\"imagetable.jsp?cata=school\">High-School</a>\n");
      out.write("    </div>\n");
      out.write("  </li>\n");
      out.write("  \n");
      out.write("   \n");
      out.write("   ");

    
     if(email!="nulll")
    {       out.println();
            out.println();
            out.println();
        

      out.write("      \n");
      out.write("<li class=\"active\"><a href=\"kart2.jsp\">Kart</a></li>\n");
      out.write("<li style=\"float:right;\" class=\"active\"><a href=\"logout.jsp\">Sign Out</a></li>\n");

    }

      out.write(" \n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("       ");

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
        

      out.write("        \n");
      out.write("            <div id=\"ax\">\n");
      out.write("                <div id=\"invi\">\n");
      out.write("                    \n");
      out.write("            register here:\n");
      out.write("        <form action=\"register.jsp\" method=\"post\" id=\"reg\">\n");
      out.write("            userid: <input id=\"tet\" type=\"text\" name=\"t3\"><br>\n");
      out.write("            password:<input id=\"tet\" type=\"password\" name=\"t4\">\n");
      out.write("           <input id=\"tet\"  type=\"submit\">\n");
      out.write("           </form>\n");
      out.write("                </div></div>\n");
      out.write("            \n");
      out.write("            <div id=\"ax1\" >\n");
      out.write("                <div id=\"invi\">\n");
      out.write("                  \n");
      out.write("        login here:\n");
      out.write("       <form action=\"login.jsp\" method=\"post\" id=\"log\">\n");
      out.write("            userid: <input id=\"tet\" type=\"text\" name=\"t1\"><br>\n");
      out.write("           password:<input id=\"tet\" type=\"password\" name=\"t2\">\n");
      out.write("           <input id=\"tet\" type=\"submit\">\n");
      out.write("             <input type=\"text\" name=\"type\" value=\"");
      out.print(typ);
      out.write("\" style=\"visibility: hidden\">\n");
      out.write("           <input type=\"text\" name=\"cata\" value=\"");
      out.print(c);
      out.write("\" style=\"visibility: hidden\">\n");
      out.write("             <input type=\"text\" name=\"pid\" value=\"");
      out.print(n);
      out.write("\" style=\"visibility: hidden\">\n");
      out.write("           </form>  \n");
      out.write("        </div> </div>\n");
      out.write("                \n");
      out.write("   ");

    }


      out.write("  \n");
      out.write("   ");

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
        
      out.write("    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div style=\"margin-top:110px; text-align:center; background-color: skyblue; font-family: sans-serif;\">\n");
      out.write("               <lable> Mobiles</lable>\n");
      out.write("               </div>\n");
      out.write("        <div id=\"fe\">\n");
      out.write("            <table border=\"0\" width=\"80%\" align=\"center\" style=\"margin-top: 10px;\"> \n");
      out.write("                <tr><td><center><a href=\"detail.jsp?pid=");
      out.print(pid);
      out.write("&cata=");
      out.print("mobile");
      out.write("\" style=\"text-decoration:none \">\n");
      out.write("                        <img src=\"");
      out.print("upload"+"\\"+img);
      out.write("\" width='70px'><br>\n");
      out.write("                        <label style=\"color:blue;\">");
      out.print(de);
      out.write("</label><br></a>\n");
      out.write("                        <label style=\"color:blue;\">Price:");
      out.print(price);
      out.write("</label><br></center></td>\n");
      out.write("         \n");
      out.write("                    \n");
      out.write("         \n");
      out.write("         \n");
      out.write("         ");

           }
         if(rs.next())
         {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             
      out.write("\n");
      out.write("           \n");
      out.write("             \n");
      out.write("           <td><center><a href=\"detail.jsp?pid=");
      out.print(pid);
      out.write("&cata=");
      out.print("mobile");
      out.write("\" style=\"text-decoration:none;\">\n");
      out.write("                             <img src=\"");
      out.print("upload"+"\\"+img);
      out.write("\" width='70px'><br>\n");
      out.write("          <label style=\"color:blue;\">");
      out.print(de);
      out.write("</label><br></a>\n");
      out.write("                    <label style=\"color:blue;\">Price:");
      out.print(price);
      out.write("</label><br></center></td>\n");
      out.write("         \n");
      out.write("                    \n");
      out.write("         \n");
      out.write("        ");
 //out.println(price);   
         }
         
         if(rs.next())
         {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             
      out.write("\n");
      out.write("           \n");
      out.write("             \n");
      out.write("           <td><center><a href=\"detail.jsp?pid=");
      out.print(pid);
      out.write("&cata=");
      out.print("mobile");
      out.write("\" style=\"text-decoration:none\">\n");
      out.write("                             <img src=\"");
      out.print("upload"+"\\"+img);
      out.write("\" width='70px'><br>\n");
      out.write("          <label style=\"color:blue;\">");
      out.print(de);
      out.write("</label><br></a>\n");
      out.write("                    <label style=\"color:blue;\">Price:");
      out.print(price);
      out.write("</label><br></center></td>\n");
      out.write("         \n");
      out.write("                    \n");
      out.write("        \n");
      out.write("        ");
 //out.println(price);   
         }
         
         
         
          if(rs.next())
         {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             
      out.write("\n");
      out.write("           \n");
      out.write("             \n");
      out.write("           <td><center><a href=\"detail.jsp?pid=");
      out.print(pid);
      out.write("&cata=");
      out.print("mobile");
      out.write("\" style=\"text-decoration:none\">\n");
      out.write("                             <img src=\"");
      out.print("upload"+"\\"+img);
      out.write("\" width='70px'><br>\n");
      out.write("          <label style=\"color:blue;\">");
      out.print(de);
      out.write("</label><br></a>\n");
      out.write("                    <label style=\"color:blue;\">Price:");
      out.print(price);
      out.write("</label><br></center></td>\n");
      out.write("         \n");
      out.write("                    \n");
      out.write("         \n");
      out.write("        ");
 //out.println(price);   
         }
         
            if(rs.next())
         {
             img=rs.getString(1);
             de=rs.getString(2);
             price=rs.getString(3);
            pid=rs.getString(4);
             
      out.write("\n");
      out.write("           \n");
      out.write("             \n");
      out.write("           <td><center><a href=\"detail.jsp?pid=");
      out.print(pid);
      out.write("&cata=");
      out.print("mobile");
      out.write("\" style=\"text-decoration:none\">\n");
      out.write("                             <img src=\"");
      out.print("upload"+"\\"+img);
      out.write("\" width='70px'><br>\n");
      out.write("          <label style=\"color:blue;\">");
      out.print(de);
      out.write("</label><br></a>\n");
      out.write("                    <label style=\"color:blue;\">Price:");
      out.print(price);
      out.write("</label><br></center></td>\n");
      out.write("         \n");
      out.write("                    \n");
      out.write("         </tr>\n");
      out.write("        ");
 //out.println(price);   
         }
          
          
          
          
          
          
         
         
           
      out.write("\n");
      out.write("        </table>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

            String query1="select * from tab";
            ResultSet rs1=st.executeQuery(query1);
        if(rs1.next())
           {
            img=rs1.getString(1);
             de=rs1.getString(2);
             price=rs1.getString(3);
            pid=rs1.getString(4);
           // out.println("hello rahul");        
        
      out.write("     <div style=\"margin-top:10px; text-align:center; background-color: skyblue; font-family: sans-serif;\">\n");
      out.write("               <lable> TABLETS</lable>\n");
      out.write("               </div>\n");
      out.write("               <div id=\"fe\">\n");
      out.write("            <table border=\"0\" width=\"80%\" align=\"center\" style=\"margin-top: 10px;\"> \n");
      out.write("                <tr><td><center><a href=\"detail.jsp?pid=");
      out.print(pid);
      out.write("&cata=");
      out.print("tab");
      out.write("\" style=\"text-decoration:none \">\n");
      out.write("                        <img src=\"");
      out.print("upload"+"\\"+img);
      out.write("\" width='70px'><br>\n");
      out.write("                        <label style=\"color:blue;\">");
      out.print(de);
      out.write("</label><br></a>\n");
      out.write("                        <label style=\"color:blue;\">Price:");
      out.print(price);
      out.write("</label><br></center></td>\n");
      out.write("         \n");
      out.write("                    \n");
      out.write("         \n");
      out.write("         \n");
      out.write("         ");

           }
         if(rs1.next())
         {
             img=rs1.getString(1);
             de=rs1.getString(2);
             price=rs1.getString(3);
            pid=rs1.getString(4);
             
      out.write("\n");
      out.write("           \n");
      out.write("             \n");
      out.write("           <td><center><a href=\"detail.jsp?pid=");
      out.print(pid);
      out.write("&cata=");
      out.print("tab");
      out.write("\" style=\"text-decoration:none\">\n");
      out.write("                             <img src=\"");
      out.print("upload"+"\\"+img);
      out.write("\" width='70px'><br>\n");
      out.write("          <label style=\"color:blue;\">");
      out.print(de);
      out.write("</label><br></a>\n");
      out.write("                    <label style=\"color:blue;\">Price:");
      out.print(price);
      out.write("</label><br></center></td>\n");
      out.write("         \n");
      out.write("                    \n");
      out.write("         \n");
      out.write("        ");
 //out.println(price);   
         }
         
         if(rs1.next())
         {
             img=rs1.getString(1);
             de=rs1.getString(2);
             price=rs1.getString(3);
            pid=rs1.getString(4);
             
      out.write("\n");
      out.write("           \n");
      out.write("             \n");
      out.write("           <td><center><a href=\"detail.jsp?pid=");
      out.print(pid);
      out.write("&cata=");
      out.print("tab");
      out.write("\" style=\"text-decoration:none\">\n");
      out.write("                             <img src=\"");
      out.print("upload"+"\\"+img);
      out.write("\" width='70px'><br>\n");
      out.write("          <label style=\"color:blue;\">");
      out.print(de);
      out.write("</label><br></a>\n");
      out.write("                    <label style=\"color:blue;\">Price:");
      out.print(price);
      out.write("</label><br></center></td>\n");
      out.write("         \n");
      out.write("                    \n");
      out.write("        \n");
      out.write("        ");
 //out.println(price);   
         }
         
         
         
          if(rs1.next())
         {
             img=rs1.getString(1);
             de=rs1.getString(2);
             price=rs1.getString(3);
            pid=rs1.getString(4);
             
      out.write("\n");
      out.write("           \n");
      out.write("             \n");
      out.write("           <td><center><a href=\"detail.jsp?pid=");
      out.print(pid);
      out.write("&cata=");
      out.print("tab");
      out.write("\" style=\"text-decoration:none\">\n");
      out.write("                             <img src=\"");
      out.print("upload"+"\\"+img);
      out.write("\" width='70px'><br>\n");
      out.write("          <label style=\"color:blue;\">");
      out.print(de);
      out.write("</label><br></a>\n");
      out.write("                    <label style=\"color:blue;\">Price:");
      out.print(price);
      out.write("</label><br></center></td>\n");
      out.write("         \n");
      out.write("                    \n");
      out.write("         \n");
      out.write("        ");
 //out.println(price);   
         }
         
            if(rs1.next())
         {
             img=rs1.getString(1);
             de=rs1.getString(2);
             price=rs1.getString(3);
            pid=rs1.getString(4);
             
      out.write("\n");
      out.write("           \n");
      out.write("             \n");
      out.write("           <td><center><a href=\"detail.jsp?pid=");
      out.print(pid);
      out.write("&cata=");
      out.print("tab");
      out.write("\" style=\"text-decoration:none\">\n");
      out.write("                             <img src=\"");
      out.print("upload"+"\\"+img);
      out.write("\" width='70px'><br>\n");
      out.write("          <label style=\"color:blue;\">");
      out.print(de);
      out.write("</label><br></a>\n");
      out.write("                    <label style=\"color:blue;\">Price:");
      out.print(price);
      out.write("</label><br></center></td>\n");
      out.write("         \n");
      out.write("                    \n");
      out.write("         </tr>\n");
      out.write("        ");
 //out.println(price);   
         }
      
         
           
      out.write("\n");
      out.write("        </table>\n");
      out.write("        </div>\n");
      out.write("         ");

                  
         }
		catch(Exception e)
		{
			System.out.println(e);
		}

         
      out.write("\n");
      out.write("        \n");
      out.write("               \n");
      out.write("          ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("               \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("    <center><hr style=\"width:92%;\"></center>\n");
      out.write("    <lable style=\" font:bold; margin-left:50px; color:blue; \">Contact Us:</lable>\n");
      out.write("    <label style=\"color:blue;margin-left:50px;\">Phone Number:7503447822</label><br>\n");
      out.write("    <label style=\"margin-left:50px; font: bold; color:blue;\">Address: 140-G Pushp Vihar Sec-1, New Delhi 110017</label><br>\n");
      out.write("    <a style=\" text-decoration: none; margin-left:50px;color:blue; margin-bottom:40px;\" href=\"rahul156kssharma@gmail.com\">E-mail us!</a>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
