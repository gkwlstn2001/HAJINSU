/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.19
 * Generated at: 2019-10-08 05:15:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/F:/workspace_spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/CoffeeBeans/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1566967374025L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->\r\n");
      out.write("\r\n");
      out.write("    <!-- Title -->\r\n");
      out.write("    <title>커피콩스(CoffeeBeans)</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Favicon -->\r\n");
      out.write("    <link rel=\"icon\" href=\"resources/img/core-img/abc.ico\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Stylesheet -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"resources/ddd.css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("\t.a {\r\n");
      out.write("\t\tdisplay:inline-block;\r\n");
      out.write("\t}\r\n");
      out.write("\t.categoryb {\r\n");
      out.write("\t\tcolor:#6B4928;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<body>   \t\r\n");
      out.write("   \t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/includes/header.jsp", out, false);
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <!-- ##### Hero Area Start ##### -->\r\n");
      out.write("    <div class=\"hero-area\">\r\n");
      out.write("        <!-- Hero Post Slides -->\r\n");
      out.write("        <div class=\"hero-post-slides owl-carousel\">\r\n");
      out.write("            <!-- Single Slide -->\r\n");
      out.write("            ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ##### Hero Area End ##### -->\r\n");
      out.write("    \r\n");
      out.write("    <!-- ##### Catagory Area Start ##### -->\r\n");
      out.write("    <div class=\"post-catagory section-padding-100-0 mb-70\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row justify-content-center\">\r\n");
      out.write("                <!-- Single Post Catagory -->\r\n");
      out.write("                <div class=\"col-12 col-md-6 col-lg-4\">\r\n");
      out.write("                    <div class=\"single-post-catagory mb-30\">\r\n");
      out.write("                        <img src=\"resources/img/bg-img/04.jpg\" alt=\"\">\r\n");
      out.write("                        <!-- Content -->\r\n");
      out.write("                        <div class=\"catagory-content-bg\">\r\n");
      out.write("                            <div class=\"catagory-content\">\r\n");
      out.write("                                <a href=\"board\" class=\"post-tag\">Function1</a>\r\n");
      out.write("                                <a href=\"board\" class=\"post-title\">BOARD</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!-- Single Post Catagory -->\r\n");
      out.write("                <div class=\"col-12 col-md-6 col-lg-4\">\r\n");
      out.write("                    <div class=\"single-post-catagory mb-30\">\r\n");
      out.write("                        <img src=\"resources/img/bg-img/05.jpg\" alt=\"\">\r\n");
      out.write("                        <!-- Content -->\r\n");
      out.write("                        <div class=\"catagory-content-bg\">\r\n");
      out.write("                            <div class=\"catagory-content\">\r\n");
      out.write("                                <a href=\"map\" class=\"post-tag\">Function2</a>\r\n");
      out.write("                                <a href=\"map\" class=\"post-title\">CAFE MAP</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <!-- Single Post Catagory -->\r\n");
      out.write("                <div class=\"col-12 col-md-6 col-lg-4\">\r\n");
      out.write("                    <div class=\"single-post-catagory mb-30\">\r\n");
      out.write("                        <img src=\"resources/img/bg-img/062.jpg\" alt=\"\">\r\n");
      out.write("                        <!-- Content -->\r\n");
      out.write("                        <div class=\"catagory-content-bg\">\r\n");
      out.write("                            <div class=\"catagory-content\">\r\n");
      out.write("                                <a href=\"voclist\" class=\"post-tag\">Function3</a>\r\n");
      out.write("                                <a href=\"voclist\" class=\"post-title\">Voice Of Customer</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ##### Catagory Area End ##### -->\r\n");
      out.write("    \r\n");
      out.write("    <!-- ##### Big Posts Area Start ##### -->\r\n");
      out.write("    <div class=\"big-posts-area mb-50\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <!-- Single Big Post Area -->\r\n");
      out.write("            <div class=\"row align-items-center\">\r\n");
      out.write("                <div class=\"col-12 col-md-6\">\r\n");
      out.write("                    <div class=\"big-post-thumbnail mb-50\">\r\n");
      out.write("                        <a href=\"boardcontent?bbsid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.BBSID}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"><img id=\"maxpicture\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxfile.SAVEFILENAME}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\"></a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-12 col-md-6\">\r\n");
      out.write("                    <div class=\"big-post-content text-center mb-50\">\r\n");
      out.write("                    \t<h2 class=\"categoryb\">최고 조회수 게시글</h2>\r\n");
      out.write("                    \t<h4>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.BBSID}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</h4>\r\n");
      out.write("                    \t<ul>\r\n");
      out.write("                    \t<li class=\"a\">\r\n");
      out.write("                        <a href=\"#\" class=\"post-tag\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.REGION}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        \r\n");
      out.write("                        <a href=\"#\" class=\"post-tag\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.SCORE}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        \r\n");
      out.write("                        <a href=\"boardcontent?bbsid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.BBSID}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"post-title\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.TITLE}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        <div class=\"post-meta\">\r\n");
      out.write("                            <a href=\"#\" class=\"post-date\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.WRITEDATE}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                            <a href=\"#\" class=\"post-author\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.EMAIL}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.CONTENT}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("                        <h4>최고 조회수 : ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.VIEWSCOUNT}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</h4>\r\n");
      out.write("                        <a href=\"boardcontent?bbsid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${maxcontent.BBSID}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"btn bueno-btn\">Read More</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <!-- Single Big Post Area -->\r\n");
      out.write("            <div class=\"row align-items-center\">\r\n");
      out.write("                <div class=\"col-12 col-md-6\">\r\n");
      out.write("                    <div class=\"big-post-thumbnail mb-50\">\r\n");
      out.write("                        <a href=\"boardcontent?bbsid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.BBSID}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"><img id=\"recentpicture\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentfile.SAVEFILENAME}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\"></a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-12 col-md-6\">\r\n");
      out.write("                    <div class=\"big-post-content text-center mb-50\">\r\n");
      out.write("                    \t<h2 class=\"categoryb\">최신 게시글</h2>\r\n");
      out.write("                    \t<h4>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.BBSID}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</h4>\r\n");
      out.write("                    \t<ul>\r\n");
      out.write("                    \t<li class=\"a\">\r\n");
      out.write("                        <a href=\"#\" class=\"post-tag\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.REGION}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        ");
      out.write("\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        \r\n");
      out.write("                        <a href=\"#\" class=\"post-tag\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.SCORE}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        \r\n");
      out.write("                        <a href=\"boardcontent?bbsid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.BBSID}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"post-title\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.TITLE}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        <div class=\"post-meta\">\r\n");
      out.write("                            <a href=\"#\" class=\"post-date\">조회수 : ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.VIEWSCOUNT}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                            <a href=\"#\" class=\"post-author\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.EMAIL}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.CONTENT}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</p>\r\n");
      out.write("                        <h4>작성일자 : ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.WRITEDATE}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</h4>\r\n");
      out.write("                        <a href=\"boardcontent?bbsid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${recentcontent.BBSID}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" class=\"btn bueno-btn\">Read More</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- ##### Big Posts Area End ##### -->\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/includes/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- ##### All Javascript Script ##### -->\r\n");
      out.write("    <!-- jQuery-2.2.4 js -->\r\n");
      out.write("    <script src=\"resources/js/jquery/jquery-2.2.4.min.js\"></script>\r\n");
      out.write("    <!-- Popper js -->\r\n");
      out.write("    <script src=\"resources/js/bootstrap/popper.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("    <script>\r\n");
      out.write("\t\t$('div#imagebox').css({\r\n");
      out.write("\t\t\t'width' : '100%',\r\n");
      out.write("\t\t\t'maxWidth' : 'none',\r\n");
      out.write("\t\t\t'height' : '500px'\r\n");
      out.write("\t\t})\r\n");
      out.write("\t\t$('img#picturebox').css({\r\n");
      out.write("\t\t\t'width':'100%',\r\n");
      out.write("\t\t\t'maxWidth' : 'none',\r\n");
      out.write("\t\t\t'height' : '500px'\r\n");
      out.write("\t\t})\r\n");
      out.write("\t\t$('img#maxpicture').css({\r\n");
      out.write("\t\t\t'width':'100%',\r\n");
      out.write("\t\t\t'maxWidth' : 'none',\r\n");
      out.write("\t\t\t'height' : '400px'\r\n");
      out.write("\t\t})\r\n");
      out.write("\t\t$('img#recentpicture').css({\r\n");
      out.write("\t\t\t'width':'100%',\r\n");
      out.write("\t\t\t'maxWidth' : 'none',\r\n");
      out.write("\t\t\t'height' : '400px'\r\n");
      out.write("\t\t})\r\n");
      out.write("\t</script>\r\n");
      out.write("\t\r\n");
      out.write("    <!-- Bootstrap js -->\r\n");
      out.write("    <script src=\"resources/js/bootstrap/bootstrap.min.js\"></script>\r\n");
      out.write("    <!-- All Plugins js -->\r\n");
      out.write("    <script src=\"resources/js/plugins/plugins.js\"></script>\r\n");
      out.write("    <!-- Active js -->\r\n");
      out.write("    <script src=\"resources/js/active.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/views/index.jsp(42,12) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/index.jsp(42,12) '${nlist2}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${nlist2}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /WEB-INF/views/index.jsp(42,12) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("nbbs");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("            <div class=\"single-slide\" id=\"imagebox\">\r\n");
            out.write("                <!-- Blog Thumbnail -->\r\n");
            out.write("                <div class=\"blog-thumbnail\">\r\n");
            out.write("                    <a href=\"boardcontent?bbsid=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${nbbs.BBSID}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\"><img id=\"picturebox\" src=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${nbbs.SAVEFILENAME}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\" alt=\"\"></a>\r\n");
            out.write("                </div>\r\n");
            out.write("            </div>\r\n");
            out.write("            ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}
