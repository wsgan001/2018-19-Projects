/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.42
 * Generated at: 2019-05-29 08:49:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminHome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"\">\r\n");
      out.write("\r\n");
      out.write("    <title>Content-Aware Collaborative Filtering\r\n");
      out.write("for Location Recommendation</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap Core CSS -->\r\n");
      out.write("    <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- MetisMenu CSS -->\r\n");
      out.write("    <link href=\"vendor/metisMenu/metisMenu.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom CSS -->\r\n");
      out.write("    <link href=\"dist/css/sb-admin-2.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Morris Charts CSS -->\r\n");
      out.write("    <link href=\"vendor/morrisjs/morris.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom Fonts -->\r\n");
      out.write("    <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("<center><h2>Content-Aware Collaborative Filtering\r\n");
      out.write("for Location Recommendation</h2></center>\r\n");
      out.write("        <!-- Navigation -->\r\n");
      out.write("        <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\" style=\"margin-bottom: 0\">\r\n");
      out.write("            <div class=\"navbar-header\">\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("               \r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"navbar-default sidebar\" role=\"navigation\">\r\n");
      out.write("                <div class=\"sidebar-nav navbar-collapse\">\r\n");
      out.write("                    <ul class=\"nav\" id=\"side-menu\">\r\n");
      out.write("                       \r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-dashboard fa-fw\"></i> Dashboard</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                       \r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"AdminHome.jsp\"><i class=\"fa fa-table fa-fw\"></i>Home</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"ViewUsers.jsp\"><i class=\"fa fa-table fa-fw\"></i>View Users</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"AddLocation.jsp\"><i class=\"fa fa-table fa-fw\"></i>Add Location</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                         <li>\r\n");
      out.write("                            <a href=\"AddReviews.jsp\"><i class=\"fa fa-table fa-fw\"></i>Add Location Reviews</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                         <li>\r\n");
      out.write("                            <a href=\"LocationDetails.jsp\"><i class=\"fa fa-table fa-fw\"></i>View All Location Details</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"LogoutController\"><i class=\"fa fa-table fa-fw\"></i>Logout</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        \r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("           \r\n");
      out.write("        </nav>\r\n");
      out.write("\r\n");
      out.write("         <div id=\"page-wrapper\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-lg-12\">\r\n");
      out.write("                    <h1 class=\"page-header\">Admin Home</h1>\r\n");
      out.write("                </div>\r\n");
      out.write("               \r\n");
      out.write("            </div>\r\n");
      out.write("           \r\n");
      out.write("           <img alt=\"\" src=\"data/aa.jpg\" height=\"650\" width=\"900\">\r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /#wrapper -->\r\n");
      out.write("\r\n");
      out.write("    <!-- jQuery -->\r\n");
      out.write("    <script src=\"vendor/jquery/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap Core JavaScript -->\r\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Metis Menu Plugin JavaScript -->\r\n");
      out.write("    <script src=\"vendor/metisMenu/metisMenu.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Morris Charts JavaScript -->\r\n");
      out.write("    <script src=\"vendor/raphael/raphael.min.js\"></script>\r\n");
      out.write("    <script src=\"vendor/morrisjs/morris.min.js\"></script>\r\n");
      out.write("    <script src=\"data/morris-data.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom Theme JavaScript -->\r\n");
      out.write("    <script src=\"dist/js/sb-admin-2.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}