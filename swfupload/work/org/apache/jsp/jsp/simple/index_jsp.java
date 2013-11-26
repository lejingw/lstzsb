package org.apache.jsp.jsp.simple;

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
      out.write("<title>Simple Upload Demo</title>\r\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"simple.css\"/>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/swfupload.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"handlers.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var swfu;\r\n");
      out.write("window.onload = function () {\r\n");
      out.write("    swfu = new SWFUpload({\r\n");
      out.write("        // Flash Settings\r\n");
      out.write("        flash_url : \"");
      out.print(contextPath);
      out.write("/flash/swfupload.swf\",\r\n");
      out.write("    \r\n");
      out.write("        // Backend settings\r\n");
      out.write("        preserve_relative_urls: true,                 // 保留相对路径不做转换\r\n");
      out.write("        upload_url: \"");
      out.print(contextPath);
      out.write("/uploadServlet\", // servlet path\r\n");
      out.write("                 \r\n");
      out.write("        // Flash file settings\r\n");
      out.write("        file_types : \"*.jpg;*.png\",\r\n");
      out.write("        file_types_description : \"Image File\",\r\n");
      out.write("        file_size_limit : \"10 MB\",\r\n");
      out.write("        file_queue_limit : \"1\",\r\n");
      out.write("    \r\n");
      out.write("        // Event handler settings\r\n");
      out.write("        file_dialog_start_handler: fileDialogStart, // fired after selectFile is called.\r\n");
      out.write("        file_queued_handler : fileQueued,           // fired after file selection dialog close.\r\n");
      out.write("        file_queue_error_handler : fileQueueError,  // fired when file was not queued.\r\n");
      out.write("        file_dialog_complete_handler : fileDialogComplete,// fired when all files queued.\r\n");
      out.write("                 \r\n");
      out.write("        upload_progress_handler : uploadProgress,  // upload status\r\n");
      out.write("        upload_error_handler : uploadError,        // fired when upload error thrown\r\n");
      out.write("        upload_success_handler : uploadSuccess,    // fired when server return a 200 status\r\n");
      out.write("        upload_complete_handler : uploadComplete,  // fired at the end of an upload cycle\r\n");
      out.write("    \r\n");
      out.write("        // Button Settings\r\n");
      out.write("        button_image_url : \"");
      out.print(contextPath);
      out.write("/image/btnUpload.png\",\r\n");
      out.write("        button_placeholder_id : \"btnPlaceHolder\",\r\n");
      out.write("        button_width: 61,\r\n");
      out.write("        button_height: 22,\r\n");
      out.write("        button_action: SWFUpload.BUTTON_ACTION.SELECT_FILE, // 单选\r\n");
      out.write("\r\n");
      out.write("        // debug infor\r\n");
      out.write("        debug:false\r\n");
      out.write("    });\r\n");
      out.write("};\r\n");
      out.write("    </script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"uploadContent\">\r\n");
      out.write("    <input id=\"txtFileName\" type=\"text\" disabled=\"disabled\" value=\"\" style=\"width:151px;\"/>\r\n");
      out.write("    <span id=\"btnPlaceHolder\"></span>\r\n");
      out.write("    <div id=\"uploadProgress\">\r\n");
      out.write("        <div id=\"colorStatus\"></div>\r\n");
      out.write("        <div id=\"percentTxt\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<input id=\"btnStartUpload\" type=\"button\" value=\"开始上传\" onclick=\"startUpload()\" disabled=\"disabled\" style=\"position:relative;left:200px;\"/>\r\n");
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
