package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.oreilly.servlet.MultipartRequest;
import java.sql.*;

public final class imageupload_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");

            
            try
            {
           String k1=application.getRealPath("/upload");                
           MultipartRequest m=new MultipartRequest(request, k1, 2303068);                
           String a= m.getOriginalFileName("file");
           String b=m.getParameter("pname");
           String c=m.getParameter("price");
           String d=m.getParameter("pid");
           String e=m.getParameter("aa");
           String f=m.getParameter("bb");
           String g=m.getParameter("cc");
           String h=m.getParameter("dd");
           String ii=m.getParameter("ee");
           String j=m.getParameter("ff");
           String k=m.getParameter("gg");
           String l=m.getParameter("hh");
           String mm=m.getParameter("ii");
           

           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major","root","root");
            Statement st=con.createStatement();
            
            
             PreparedStatement ps=con.prepareStatement("insert into mobile values(?,?,?,?,?,?,?,?,?,?,?,?,?)");  
	  
	  
	ps.setString(1,a);
        ps.setString(2,b);
        ps.setString(3,c);
        ps.setString(4,d);
        ps.setString(5,e);
        ps.setString(6,f);
        ps.setString(7,g);
        ps.setString(8,h);
        ps.setString(9,ii);
        ps.setString(10,j);
        ps.setString(11,k);
        ps.setString(12,l);
        ps.setString(13,mm);
        
        

	int i1=ps.executeUpdate(); 
        
        
	if(i1>0) 
        {
	out.print("Work is Completed");
        }     
                       
            
            }
            catch(Exception e)
            {}


       
      out.write('	');
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
