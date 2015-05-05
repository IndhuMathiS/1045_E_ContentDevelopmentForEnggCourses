package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <link rel=\"icon\" href=\"../../favicon.ico\">\n");
      out.write("\n");
      out.write("    <title>E-Learning</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"bootstrap-3.3.2-dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"bootstrap-3.3.2-dist/font-awesome-4.3.0/css/font-awesome.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->\n");
      out.write("    <!--[if lt IE 9]><script src=\"../../assets/js/ie8-responsive-file-warning.js\"></script><![endif]-->\n");
      out.write("    <script src=\"../../assets/js/ie-emulation-modes-warning.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("    \n");
      out.write("    <style>\n");
      out.write("        a{\n");
      out.write("            color: white;\n");
      out.write("            font-size: 18px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("      <!-- The justified navigation menu is meant for single line per list item.\n");
      out.write("           Multiple lines will require custom code not provided by Bootstrap. -->\n");
      out.write("        <div style=\"background-color: #009688; color: white; padding: 1px;\"  class=\"masthead\">\n");
      out.write("            <h1 class=\"\">&nbsp;<i class=\"fa fa-cloud-upload fa-3x\"></i> &nbsp;<span style=\"font-size: 40px;\">E-LEARNING</span></h1>\n");
      out.write("            <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("                <ul class=\"nav navbar-nav\">\n");
      out.write("                    <li class=\"active\"><a href =\"home.jsp\">HOME</a></li>\n");
      out.write("                    <li><a href =\"login.jsp\">LOGIN</a></li>\n");
      out.write("                    <li><a href =\"register.jsp\">REGISTER</a></li>\n");
      out.write("                    <li><a href =\"Admin.jsp\">ADMINISTRATION</a></li>\n");
      out.write("                    <li><a href =\"http://www.google.co.in/\">HELP</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("      \n");
      out.write("      <br/>\n");
      out.write("\n");
      out.write("      <!-- Jumbotron -->\n");
      out.write("      <div class=\"jumbotron\">\n");
      out.write("        <img src=\"Images/laptop_learn.gif\" class=\"pull-right\" />\n");
      out.write("        <h2>E-Learning???</h2>\n");
      out.write("        \n");
      out.write("        <p class=\"lead\">E-learning (or e-Learning) is the use of electronic educational technology in learning and teaching.</p>\n");
      out.write("        \n");
      out.write("        <p><a class=\"btn btn-lg btn-success\" href=\"#\" role=\"button\">Get started today</a></p>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <!-- Example row of columns -->\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-4\">\n");
      out.write("          <h2>E-Learning Objectives</h2>\n");
      out.write("          <p class=\"text-justify\">eLearning represents an innovative shift in the field of learning, providing rapid access to specific knowledge and information. It offers online instruction that can be delivered anytime and anywhere through a wide range of electronic learning solutions such as Web-based courseware, online discussion groups, live virtual classes, video and audio streaming, Web chat, online simulations, and virtual mentoring.</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-4\">\n");
      out.write("          <h2>Scope of E-Learning</h2>\n");
      out.write("          <p class=\"text-justify\">If we talk about the future of elearning, Its very bright in India.  According to the research report, “India E-Learning Market Outlook to FY’2018 – Increasing Technology Adoption to Drive Future Growth, the market is estimated to grow at a CAGR of 17.4% over the period FY2013-FY’2018 driven by many factors such as increasing government initiatives to promote e-learning, increasing adoption of technology, shortage of quality education, convenience and cost factors and others. With an inclination in the adoption of e-learning method to facilitate talent management in corporations, the demand of custom e-learning content and technology would increase, thereby increasing the overall growth of India’s e-learning market in future.</p>          \n");
      out.write("        </div>\n");
      out.write("          <div class=\"col-lg-4\">\n");
      out.write("          <h2>Advantage of E-Learning</h2>\n");
      out.write("          <ul class=\"list-group\">\n");
      out.write("              <li class=\"list-group-item\">Ability to Cover Distance</li>\n");
      out.write("              <li class=\"list-group-item\">Learning at self paced</li>\n");
      out.write("              <li class=\"list-group-item\">Social Interactivity</li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <!-- Site footer -->\n");
      out.write("      <footer class=\"footer\" style=\"background-color: #009688; color: white; padding: 15px;\">\n");
      out.write("          <p class=\"text-center\">&copy; SaveethaCOE 2015</p>\n");
      out.write("      </footer>\n");
      out.write("\n");
      out.write("    </div> <!-- /container -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->\n");
      out.write("    <script src=\"../../assets/js/ie10-viewport-bug-workaround.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
