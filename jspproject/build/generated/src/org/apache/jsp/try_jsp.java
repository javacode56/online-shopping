package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class try_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

    String email=(String)session.getAttribute("email");
    if(email.equals("null"))
    {
//        out.println(email);

      out.write("register here:\n");
      out.write("        <form action=\"register.jsp\" method=\"post\">\n");
      out.write("            userid: <input type=\"text\" name=\"t3\"><br>\n");
      out.write("           password:<input type=\"password\" name=\"t4\">\n");
      out.write("           <input type=\"submit\"><br>\n");
      out.write("           </form>\n");
      out.write("        login here:\n");
      out.write("       <form action=\"login.jsp\" method=\"post\">\n");
      out.write("            userid: <input type=\"text\" name=\"t1\"><br>\n");
      out.write("           password:<input type=\"password\" name=\"t2\">\n");
      out.write("           <input type=\"submit\"><br>\n");
      out.write("           </form>       \n");

    }
    else if(email!=null)
    {

      out.write("\n");
      out.write("<form action=\"logout.jsp\" method=\"post\">\n");
      out.write("    <label> Welcome ");
      out.print(email);
      out.write("</label><br>\n");
      out.write("    <button type=\"submit\" name=\"submit\" > Logout</button>\n");
      out.write("</form><br>\n");

    }

      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<style>\n");
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
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div style=\"position:fixed; width:100%; top:0; margin-bottom:30px;\">\n");
      out.write("<ul>\n");
      out.write("  <li><a href=\"Home.jsp\">Home</a></li>\n");
      out.write("  <li><a href=\"AboutUs.jsp\">About Us</a></li>\n");
      out.write("  <li class=\"dropdown\">\n");
      out.write("    <a href=\"#\" class=\"dropbtn\">Search Jobs</a>\n");
      out.write("    <div class=\"dropdown-content\"  style=\"z-index:1\">\n");
      out.write("      <a href=\"#\">By Location</a>\n");
      out.write("      <a href=\"#\">Search By Industry</a>\n");
      out.write("      <a href=\"#\">Search By Location And Industry </a>\n");
      out.write("\t  <a href=\"#\">View All Jobs</a>\n");
      out.write("    </div>\n");
      out.write("  </li>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("\n");
      out.write("\t<li class=\"dropdown\">\n");
      out.write("  <a href=\"#\" class=\"dropbtn\">Login</a>\n");
      out.write("  <div class=\"dropdown-content\" style=\"z-index:1\">\n");
      out.write("  <a href=\"jobSeekerLogin.jsp\">JobSeeker Login</a>\n");
      out.write("  <a href=\"CompanyLogin.jsp\">Company Login</a>\n");
      out.write("  \n");
      out.write("  </div></li>\n");
      out.write("  \n");
      out.write("  <li class=\"dropdown\">\n");
      out.write("  <a href=\"#\" class=\"dropbtn\">Register</a>\n");
      out.write("  <div class=\"dropdown-content\" style=\"z-index:1\">\n");
      out.write("  <a href=\"CompanyRegister.jsp\">Company Register</a>\n");
      out.write("  <a href=\"*\">Employer Register</a></div></li>\n");
      out.write("  <li style=\"float:right;\" class=\"active\"><a href=\"*\">Sign Out</a></li>\n");
      out.write("  \n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
