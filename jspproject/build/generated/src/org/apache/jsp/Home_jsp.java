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
    _jspx_dependants = new java.util.ArrayList<String>(1);
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Welcome to Shopmart.com</title>\n");
      out.write("        \n");
      out.write("    <h6>shopmart.com</h6>\n");
      out.write("<style>\n");
      out.write("    #imgs\n");
      out.write("    {\n");
      out.write("        text-align: center;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("       register here:\n");
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
      out.write("           </form>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("                <form action=\"buy.jsp\" method=\"post\">\n");
      out.write("                    <img src=\"giphy.gif\" width=\"600\" height=\"600\">\n");
      out.write("                    <center><label style=\"color:blue;\">Product Name</label><br>\n");
      out.write("                    <label style=\"color:blue;\">Price:</label><br>\n");
      out.write("                    <input type=\"submit\"  name=\"buy\" value=\" Buy \"></center>\n");
      out.write("                </form>\n");
      out.write("          ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            #margins\n");
      out.write("            {\n");
      out.write("                margin-left:88%;\n");
      out.write("            }\n");
      out.write("        </style>        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center><hr style=\"width:92%;\"></center>\n");
      out.write("    <label style=\"margin-left:50px;\"><b style=\"color:blue;\">Contact Us: </b></label><br> \n");
      out.write("    <label><b style=\"color:blue;margin-left:50px;\">Phone Number</b> 9958106642</label>\n");
      out.write("    <label style=\"margin-left:50px;\"><b style=\"color:blue;\">Address:</b> 13/7 M.B Road Saket, Pushp Vihar Sec-1, New Delhi 110017</label>\n");
      out.write("    <div style=\"margin-top:-30px;\"><label id=\"margins\"><a href=\"feedback.jsp\" style=\"text-decoration: none;color:blue;\"><b>Feedback</b></a></label></div>\n");
      out.write("    <a href=\"mailto:vijayant.s95@gmail.com\" style=\"margin-left:50px;color:blue;\">E-mail us!</a>\n");
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
