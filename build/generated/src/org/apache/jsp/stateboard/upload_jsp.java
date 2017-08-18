package org.apache.jsp.stateboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class upload_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/stateboard/header.jsp");
    _jspx_dependants.add("/stateboard/menu.jsp");
    _jspx_dependants.add("/stateboard/footer.jsp");
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-image: url('images/bg.jpg')\">\n");
      out.write("       ");
      out.write('\n');
      out.write("<ul id=\"nav\">\n");
      out.write("            <li>Home</li>\n");
      out.write("            <li>Subject\n");
      out.write("                <ul>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"new_subject.jsp\"> New</a>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                         <a href=\"list.jsp\"> List</a>\n");
      out.write("                        \n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("            <li>School\n");
      out.write("                <ul>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"new_school.jsp\"> New School</a>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                        List of School\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("            <li>Student\n");
      out.write("                <ul>\n");
      out.write("                    <li>\n");
      out.write("                        <a href=\"new_state_board.jsp\">  New Student</a>\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                        List \n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("            <li>10th\n");
      out.write("                <ul>\n");
      out.write("                    <li>\n");
      out.write("                        Upload\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                        List\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("            <li>12th\n");
      out.write("                <ul>\n");
      out.write("                    <li>\n");
      out.write("                        Upload\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                        List \n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("            <li>Profile\n");
      out.write("                <ul>\n");
      out.write("                    <li>\n");
      out.write("                        Change Password\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        Change Profile\n");
      out.write("                    </li>\n");
      out.write("                     <li>\n");
      out.write("                        Logout\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("        </ul>");
      out.write("\n");
      out.write("<center>\n");
      out.write("       \n");
      out.write("<h1>New User Entry Form</h1>\n");
      out.write("<form>\n");
      out.write("<table>\n");
      out.write("    <tr><td><label class=\"label\">City</label></td>\n");
      out.write("        <td>\n");
      out.write("            <input type=\"text\" class=\"txt\" autofocus name=\"city\"/>\n");
      out.write("        </td></tr>\n");
      out.write("    <td><label class=\"label\">School</label></td>\n");
      out.write("        <td>\n");
      out.write("            <select class=\"txt\" name=\"school\"><option>-Select-</option></select>\n");
      out.write("        </td><br>\n");
      out.write("    <tr><td><label class=\"label\"></label></td>\n");
      out.write("        <td>\n");
      out.write("            <input type=\"submit\" class=\"txt\" name=\"Submit\" value=\"SEARCH\"/>\n");
      out.write("        </td></tr>\n");
      out.write("    \n");
      out.write("</table>\n");
      out.write("    </form>\n");
      out.write("    <table width=\"100%\">\n");
      out.write("        <tr><th>ROLL NO</th><th>FIRST NAME</th><th>LAST NAME</th><th>STREAM</th></tr>\n");
      out.write("     ");

            if(request.getParameter("Submit")!=null)
            {
                String city=request.getParameter("city");
                String college=request.getParameter("school");
                
                
                String sql="select rollno,firstname,lastname,stream from Student where city='"+city+"' and name='"+college+"'";
                out.println(sql);
                dbcon.DbConnection db=new dbcon.DbConnection();
                ResultSet rs;
                rs=db.DQL(sql);
                out.println(sql);
                
                while(rs.next()){
                    
      out.write("\n");
      out.write("        \n");
      out.write("        <tr><td>");
      out.print(rs.getString(1));
      out.write("</td><td>");
      out.print(rs.getString(2));
      out.write("</td><td>");
      out.print(rs.getString(3));
      out.write("</td><td>");
      out.print(rs.getString(4));
      out.write("</td></tr>\n");
      out.write("        \n");
      out.write("        ");

                }
            }
    
      out.write("    \n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("</center>\n");
      out.write("\n");
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
