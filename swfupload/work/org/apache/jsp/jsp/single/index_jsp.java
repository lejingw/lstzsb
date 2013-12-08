package org.apache.jsp.jsp.single;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
 
    String contextPath = request.getContextPath();

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\"/>\r\n");
      out.write("<title>Classic Form Demo</title>\r\n");
      out.write("<link href=\"single.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/swfupload.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/swfupload.swfobject.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/fileprogress.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"handlers.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var swfu;\r\n");
      out.write("window.onload = function () {\r\n");
      out.write("\tswfu = new SWFUpload({\r\n");
      out.write("\t    // Flash Settings\r\n");
      out.write("\t    flash_url : \"");
      out.print(contextPath);
      out.write("/flash/swfupload.swf\",\r\n");
      out.write("\t\r\n");
      out.write("\t    // Backend settings\r\n");
      out.write("\t    preserve_relative_urls: true,\r\n");
      out.write("\t    upload_url: \"");
      out.print(contextPath);
      out.write("/uploadServlet\", // servlet path\r\n");
      out.write("\t             \r\n");
      out.write("\t    // Flash file settings\r\n");
      out.write("\t    file_types : \"*.jpg\",             // multi types like: \"*.doc;*.wpd;*.pdf\"\r\n");
      out.write("\t    file_types_description : \"Image File\",\r\n");
      out.write("\t    file_size_limit : \"10 MB\",                \r\n");
      out.write("\t    file_queue_limit : \"1\",\r\n");
      out.write("\t\r\n");
      out.write("\t    // Event handler settings\r\n");
      out.write("\t    swfupload_loaded_handler : swfUploadLoaded,// fired after flash loaded.\r\n");
      out.write("\t    file_dialog_start_handler: fileDialogStart,// fired after selectFile is called.\r\n");
      out.write("\t    file_queued_handler : fileQueued,          // fired after file selection dialog close.\r\n");
      out.write("\t    file_queue_error_handler : fileQueueError, // fired when file was not queued.\r\n");
      out.write("\t    file_dialog_complete_handler : fileDialogComplete,// fired when all files queued.\r\n");
      out.write("\t             \r\n");
      out.write("\t    //upload_start_handler : uploadStart,   // I could do some client/JavaScript validation here, but I don't need to.\r\n");
      out.write("\t    upload_progress_handler : uploadProgress,  // upload status\r\n");
      out.write("\t    upload_error_handler : uploadError,        // fired when upload error thrown\r\n");
      out.write("\t    upload_success_handler : uploadSuccess,    // fired when server return a 200 status\r\n");
      out.write("\t    upload_complete_handler : uploadComplete,  // fired at the end of an upload cycle\r\n");
      out.write("\t\r\n");
      out.write("\t    // Button Settings\r\n");
      out.write("\t    button_image_url : \"");
      out.print(contextPath);
      out.write("/image/btnUpload.png\",\r\n");
      out.write("\t    button_placeholder_id : \"spanButtonPlaceholder\",\r\n");
      out.write("\t    button_width: 61,\r\n");
      out.write("\t    button_height: 22,\r\n");
      out.write("\t    button_action:SWFUpload.BUTTON_ACTION.SELECT_FILE,\r\n");
      out.write("\t             \r\n");
      out.write("\t    custom_settings : {\r\n");
      out.write("\t        progress_target : \"fsUploadProgress\",\r\n");
      out.write("\t        upload_successful : false\r\n");
      out.write("\t    },\r\n");
      out.write("\t    debug:false\r\n");
      out.write("\t});\r\n");
      out.write("};\r\n");
      out.write("    </script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write(" \r\n");
      out.write("<div id=\"content\">\r\n");
      out.write("    <h2>Classic Form Demo</h2>\r\n");
      out.write("    <form id=\"form1\" action=\"\" enctype=\"multipart/form-data\" method=\"post\">        \r\n");
      out.write("        <div class=\"fieldset\">\r\n");
      out.write("            <span class=\"legend\">Submit your Application</span>\r\n");
      out.write("            <table>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td><label for=\"lastname\">Last Name:</label></td>\r\n");
      out.write("                    <td><input id=\"lastname\" name=\"lastname\" type=\"text\" style=\"width: 200px\"/></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td><label for=\"firstname\">First Name:</label></td>\r\n");
      out.write("                    <td><input id=\"firstname\" name=\"firstname\" type=\"text\" style=\"width: 200px\"/></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <td><label for=\"txtFileName\">Resume:</label></td>\r\n");
      out.write("                    <td>\r\n");
      out.write("                        <div>\r\n");
      out.write("                            <div>\r\n");
      out.write("                                <input id=\"txtFileName\" name=\"txtFileName\" type=\"text\" disabled=\"disabled\" style=\"border: solid 1px; background-color: #FFFFFF;\" />\r\n");
      out.write("                                <span id=\"spanButtonPlaceholder\"></span>(10 MB max)\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div id=\"fsUploadProgress\" class=\"flash\"></div>\r\n");
      out.write("                            <input id=\"hidFileID\" name=\"hidFileID\" type=\"hidden\" value=\"\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </td>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("            <br />\r\n");
      out.write("            <input id=\"btnSubmit\" type=\"submit\" value=\"Submit Application\"/>\r\n");
      out.write("        </div>\r\n");
      out.write("    </form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
