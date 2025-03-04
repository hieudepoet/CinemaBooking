package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>Header</title>\n");
      out.write("    <style>\n");
      out.write("        html, body {\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("            height: 100%; /* Đảm bảo chiều cao đầy đủ */\n");
      out.write("            overflow-x: hidden; /* Ngăn cuộn ngang nếu không cần */\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .content-fluid {\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: space-between;\n");
      out.write("            align-items: center;\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .contact-info {\n");
      out.write("            width : 50%;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("            gap: 20px;\n");
      out.write("            font-size: 14px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .social-links {\n");
      out.write("            height: 100%;\n");
      out.write("            width: 50%;\n");
      out.write("            background-color: #ff0000;\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: space-around;\n");
      out.write("            gap: 15px;\n");
      out.write("            align-items: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .social-links a {\n");
      out.write("            color: white;\n");
      out.write("            text-decoration: none;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .social-links img {\n");
      out.write("            width: 24px; /* Kích thước biểu tượng mạng xã hội */\n");
      out.write("            height: 24px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .app-links img {\n");
      out.write("            width: 120px; /* Kích thước biểu tượng App Store/Google Play */\n");
      out.write("            height: 40px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <link rel=\"icon\" type=\"image/x-icon\" href=\"</assets/images/favicon.png\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"header-container\">\n");
      out.write("        <div class=\"content-fluid\">\n");
      out.write("            <div class=\"contact-info\">\n");
      out.write("                <span>Call: 0846 27 22 88</span>\n");
      out.write("                <span> | </span>\n");
      out.write("                <span>cskh@ricecinemacenter.vn</span>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"social-links\">\n");
      out.write("                <a href=\"https://www.facebook.com\" target=\"_blank\">\n");
      out.write("                    <img src=\"assets/images/facebook.png\" alt=\"Facebook\" />\n");
      out.write("                </a>\n");
      out.write("                <a href=\"https://www.youtube.com\" target=\"_blank\">\n");
      out.write("                    <img src=\"assets/images/youtube.png\" alt=\"YouTube\" />\n");
      out.write("                </a>\n");
      out.write("                <a href=\"https://www.tiktok.com\" target=\"_blank\">\n");
      out.write("                    <img src=\"assets/images/tiktok.png\" alt=\"TikTok\" />\n");
      out.write("                </a>\n");
      out.write("                <a href=\"https://zalo.me\" target=\"_blank\">\n");
      out.write("                    <img src=\"assets/images/zalo.png\" alt=\"Zalo\" />\n");
      out.write("                </a>\n");
      out.write("                <div class=\"app-links\">\n");
      out.write("                    <a href=\"https://apps.apple.com\" target=\"_blank\">\n");
      out.write("                        <img src=\"assets/images/app-1.png\" alt=\"App Store\" />\n");
      out.write("                    </a>\n");
      out.write("                    <a href=\"https://play.google.com\" target=\"_blank\">\n");
      out.write("                        <img src=\"assets/images/app-2.png\" alt=\"Google Play\" />\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
