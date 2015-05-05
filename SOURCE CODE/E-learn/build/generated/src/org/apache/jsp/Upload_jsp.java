package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Upload_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title> Key-Aggregate Cryptosystem</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<link rel=\"stylesheet\" href=\"styles.css\" type=\"text/css\" media=\"all\">\n");

             String un = "admin";
           
        
      out.write("\n");
      out.write(" <script>\n");
      out.write("      function formValidation()\n");
      out.write("{\n");
      out.write("    \n");
      out.write("        var file = document.getElementById('file');  \n");
      out.write("\n");
      out.write("        if(File_validation(file))\n");
      out.write("{\n");
      out.write("  return true;  \n");
      out.write("}\n");
      out.write("\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("\n");
      out.write("function File_validation(uid)\n");
      out.write("{\n");
      out.write("var uid_len = uid.value.length;\n");
      out.write("var file=uid.files[0];\n");
      out.write("var uid_len = uid.value.length;\n");
      out.write("if (uid_len == 0 )\n");
      out.write("{\n");
      out.write("alert(\"File Should not be empty\");\n");
      out.write("uid.focus();\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("else if(uid_len > 0 && uid_len > 0 && file.size >= 1048576)\n");
      out.write("    {\n");
      out.write("       alert(\"File Size Should be less than 1MB only\");\n");
      out.write("uid.focus();\n");
      out.write("return false;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("return true;\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"spinner\"></div>\n");
      out.write("\n");
      out.write("<div class=\"extra\">\n");
      out.write("<!-- do not delete or change--><div class=\"mycopy\">Website Design: <a href=\"http://www.myfreecsstemplates.com\" class=\"link33\">free web templates</a></div><!-- end -->\n");
      out.write("<div class=\"main1\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"main2\">\n");
      out.write("  \n");
      out.write("<div class=\"bg1\"></div>\n");
      out.write("\n");
      out.write("<div class=\"grad1\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<header>\n");
      out.write("  <a href=\"\" class=\"logo\">    \n");
      out.write("    <div class=\"txt1\">Secure Data Sharing in Cloud Computing</div>\n");
      out.write("    <div class=\"txt2\">Secure Data Sharing in Cloud Computing</div>\n");
      out.write("    <div class=\"txt3\">Using Key-Aggregate Cryptosystem</div>\n");
      out.write("  </a>\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("<nav class=\"menu\" style=\"margin-top: 180px; width: 1065px; margin-left: 235px;\">\n");
      out.write("  <ul id=\"menu\">\n");
      out.write("      <li class=\"nav\" style=\"margin-left: -223px;\">\n");
      out.write("         \n");
      out.write("        <span class=\"\"><span class=\"txt1\">Home</span></span>\n");
      out.write("          </a>\n");
      out.write("    </li>\n");
      out.write("   <li class=\"nav1\">\n");
      out.write("         <a href=\"Upload.jsp#!/page_SERVICES\">\n");
      out.write("        <span class=\"\"><span class=\"txt1\">Upload</span></span>\n");
      out.write("         </a>\n");
      out.write("    </li>\n");
      out.write("      <li class=\"nav2\">\n");
      out.write("      <a href=\"Download.jsp#!/page_SERVICES\">\n");
      out.write("        <span class=\"\"><span class=\"txt1\">Download</span></span>\n");
      out.write("          </a>\n");
      out.write("    </li>\n");
      out.write("    ");
 if(String.valueOf(session.getAttribute("Sn")).compareToIgnoreCase("Not")!=0) {
      out.write("\n");
      out.write("                           <li class=\"nav3 with_ul\">\n");
      out.write("      <a href=\"Groupmembers.jsp#!/page_SERVICES\">\n");
      out.write("        <span class=\"\"><span class=\"txt1\">Group Members</span></span>\n");
      out.write("           </a>      \n");
      out.write("    </li>\n");
      out.write("                                ");
}
                                else
                                {
                                
      out.write("\n");
      out.write("    <li class=\"nav3 with_ul\">\n");
      out.write("      <a href=\"DownloadCount.jsp#!/page_SERVICES\">\n");
      out.write("        <span class=\"\"><span class=\"txt1\">Download Count</span></span>\n");
      out.write("        </a>      \n");
      out.write("    </li>\n");
      out.write("     ");
 }
                                
      out.write("\n");
      out.write("     <li class=\"nav4\">\n");
      out.write("      <a href=\"History.jsp#!/page_SERVICES\">\n");
      out.write("        <span class=\"\"><span class=\"txt1\">History</span></span>\n");
      out.write("         </a>\n");
      out.write("    </li>\n");
      out.write("     <li class=\"nav5\">\n");
      out.write("      <a href=\"Logout.jsp\">\n");
      out.write("        <span class=\"\"><span class=\"txt1\">LogOut</span></span>\n");
      out.write("        </a>\n");
      out.write("    </li>\n");
      out.write("  </ul>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--content -->\n");
      out.write("<article id=\"content\">\n");
      out.write("\n");
      out.write("  <ul>\n");
      out.write("          \n");
      out.write("    <li id=\"page_SPLASH\"></li>\n");
      out.write("    \n");
      out.write("    <!-- ============ PAGE ABOUT ============= -->\n");
      out.write("    \n");
      out.write("    <!-- ============ PAGE ABOUT END============= -->\n");
      out.write("\n");
      out.write("    <!-- ============ PAGE SERVICES ============= -->\n");
      out.write("    <li id=\"page_SERVICES\">\n");
      out.write("      <div class=\"vl1\"></div>\n");
      out.write("      <div class=\"vl2\"></div>\n");
      out.write(" \n");
      out.write("      <div class=\"box2\" style=\"overflow: auto\">\n");
      out.write("      \n");
      out.write("      <br></br> Hi, <font size=\"5\" color=\"green\">");
      out.print(session.getAttribute("un"));
      out.write("...</font><br></br>\n");
      out.write("                                    \n");
      out.write("                                    <center> \n");
      out.write("                                        <h2>Upload</h2>\n");
      out.write("                                        \n");
      out.write("                                        <form class=\"search-form1\" method=\"post\" enctype=\"multipart/form-data\" action=\"Upload\"  name=\"form1\" onsubmit=\"return formValidation();\"><fieldset>\n");
      out.write("       \n");
      out.write("                                                <table cellspacing=\"20px\" style=\"border: #999999;border-style: solid\">\n");
      out.write("                                                    <tr><td>Choose File</td>\n");
      out.write("                                                        <td>\n");
      out.write("  <input  type=\"file\" value=\"\" name=\"file\" id=\"file\"></input> </td>\n");
      out.write("                                                    </tr>\n");
      out.write("                                                    <tr><td></td><td><input class=\"submit\" type=\"submit\" value=\"Upload\"></input></td></tr></table>\n");
      out.write("                                                \n");
      out.write("   </fieldset></form></center>\n");
      out.write("   \n");
      out.write("    </div>\n");
      out.write("    <div class=\"box3\">\n");
      out.write("      \n");
      out.write("     \n");
      out.write("\n");
      out.write("      \n");
      out.write("       \n");
      out.write("\n");
      out.write("\n");
      out.write("       </div>\n");
      out.write("    </li>\n");
      out.write("    \n");
      out.write("    <li id=\"page_CONTACTS\">\n");
      out.write("      <div class=\"vl1\"></div>\n");
      out.write("      <div class=\"vl2\"></div>\n");
      out.write("    <div class=\"box1\">\n");
      out.write("      \n");
      out.write("      <h2>postal address</h2>\n");
      out.write("\n");
      out.write("      <img src=\"images/contacts01.jpg\" alt=\"\" class=\"border1 img3\">\n");
      out.write("\n");
      out.write("      <p class=\"text color1 upper\">\n");
      out.write("        Lorem ipsum dolor sit amet      </p>\n");
      out.write("\n");
      out.write("      <br>\n");
      out.write("\n");
      out.write("      <p class=\"text color1 upper\">\n");
      out.write("        Contact Address      </p>\n");
      out.write("      <p class=\"text\">\n");
      out.write("        8901 MINNESOTA, BEMIDJI,<br />\n");
      out.write("1221 BIRCHMONT DRIVE NORTHEAST.<br />\n");
      out.write("<br />\n");
      out.write("TELEPHONE:+1(234) 567 8910<br />\n");
      out.write("FAX:+1 800 889 9898<br />\n");
      out.write("E-MAIL:MAIL@COMPANYNAME.COM</p>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"box2\">\n");
      out.write("      \n");
      out.write("      <h2>contact form</h2>\n");
      out.write("\n");
      out.write("      <div id=\"note\"></div>\n");
      out.write("            <div id=\"fields\">\n");
      out.write("            <form id=\"ajax-contact-form\" action=\"javascript:alert('success!');\">\n");
      out.write("              <div class=\"clear\"></div>\n");
      out.write("              \n");
      out.write("              <INPUT type=\"text\" name=\"name\" value=\"Your full name:\" onBlur=\"if(this.value=='') this.value='Your full name:'\" \n");
      out.write("                        onFocus=\"if(this.value =='Your full name:' ) this.value=''\">\n");
      out.write("              <div class=\"clear\"></div>\n");
      out.write("              \n");
      out.write("              <INPUT type=\"text\" name=\"email\" value=\"Your email:\" onBlur=\"if(this.value=='') this.value='Your email:'\" \n");
      out.write("                        onFocus=\"if(this.value =='Your email:' ) this.value=''\">\n");
      out.write("              <div class=\"clear\"></div>\n");
      out.write("              \n");
      out.write("              <INPUT type=\"text\" name=\"phone\" value=\"Phone number:\" onBlur=\"if(this.value=='') this.value='Phone number:'\" \n");
      out.write("                        onFocus=\"if(this.value =='Phone number:' ) this.value=''\">\n");
      out.write("              <div class=\"clear\"></div>\n");
      out.write("              \n");
      out.write("              <TEXTAREA NAME=\"content\" onBlur=\"if(this.value=='') this.value='Message:'\" \n");
      out.write("                        onFocus=\"if(this.value =='Message:' ) this.value=''\">Message:</TEXTAREA>\n");
      out.write("              <div class=\"clear\"></div>\n");
      out.write("              \n");
      out.write("              <div class=\"left\">                          \n");
      out.write("              <INPUT class=\"submit\" type=\"submit\" name=\"submit\" value=\"submit\">\n");
      out.write("              </div>\n");
      out.write("             \n");
      out.write("              <div class=\"clear\"></div>\n");
      out.write("              </form>\n");
      out.write("            </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"box3\">\n");
      out.write("      \n");
      out.write("      <h2>useful links</h2>\n");
      out.write("\n");
      out.write("      <figure class=\"google_map\"></figure>\n");
      out.write("    </div>\n");
      out.write("    </li>\n");
      out.write("    <!-- ============ PAGE CONTACTS END============= -->\n");
      out.write("\n");
      out.write("    <!-- ============ PAGE PRIVACY ============= -->\n");
      out.write("    <li id=\"page_PRIVACY\">\n");
      out.write("    <div class=\"box4\">\n");
      out.write("\n");
      out.write("      <h2>Privacy Policy</h2>\n");
      out.write("\n");
      out.write("      <div class=\"scroll-pane\"><div>\n");
      out.write("        \n");
      out.write("     \n");
      out.write("\n");
      out.write("      </div></div>\n");
      out.write("    </div>\n");
      out.write("    </li>\n");
      out.write("    <!-- ============ PAGE PRIVACY END============= -->    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <!-- ============ PAGE MORE ============= -->\n");
      out.write("    <li id=\"page_MORE\" >\n");
      out.write("      \n");
      out.write("\n");
      out.write("\n");
      out.write("              \n");
      out.write("                                  \n");
      out.write("<!-- box begin -->\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("    </li>\n");
      out.write("    <!-- ============ PAGE MORE END============= -->\n");
      out.write("\n");
      out.write("\n");
      out.write("  </ul>\n");
      out.write("</article>\n");
      out.write("<!--content end -->\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<footer>\n");
      out.write("\n");
      out.write("<div class=\"copyright\">Copyright (c) 2014. All rights reserved.</div>\n");
      out.write("\n");
      out.write("<div class=\"tola\">\n");
      out.write("   </div>\n");
      out.write("<a href=\"#!/page_PRIVACY\" class=\"privacy\">Privacy policy</a>\n");
      out.write("\n");
      out.write("</footer>\n");
      out.write("</div>\n");
      out.write("<script type=\"text/javascript\" src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
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
