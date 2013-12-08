package org.apache.jsp.jsp.multi;

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
      out.write("<title>Multi Upload Demo</title>\r\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"multi.css\"/>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/swfupload.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/swfupload.queue.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/fileprogress.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"handlers.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var swfu;\r\n");
      out.write("window.onload = function(){\r\n");
      out.write("    var settings = {\r\n");
      out.write("    \tpreserve_relative_urls:true,\r\n");
      out.write("        flash_url:\"");
      out.print(contextPath);
      out.write("/flash/swfupload.swf\",\r\n");
      out.write("        upload_url:\"");
      out.print(contextPath);
      out.write("/uploadServlet\",         // servlet path\r\n");
      out.write("        file_size_limit:\"10 MB\",\r\n");
      out.write("        file_types:\"*.jpg;*.gif;*.png\",\r\n");
      out.write("        file_types_description:\"Image Files\",\r\n");
      out.write("        file_upload_limit:10,                // 允许上传的文件个数\r\n");
      out.write("        file_queue_limit:10,                 // 上传文件的队列大小\r\n");
      out.write("        custom_settings:{\r\n");
      out.write("            progressTarget:\"uploadProgress\",\r\n");
      out.write("            cancelButtonId:\"btnCancel\"\r\n");
      out.write("        },\r\n");
      out.write("        debug:false,\r\n");
      out.write("        // button settings\r\n");
      out.write("        button_width:\"80\",\r\n");
      out.write("        button_height:\"29\",\r\n");
      out.write("        button_image_url:\"");
      out.print(contextPath);
      out.write("/image/btnBackground.png\",\r\n");
      out.write("        button_text:'<span class=\"theFont\">选择文件...</span>',\r\n");
      out.write("        button_text_style:\".theFont{font-size:12px;font-weight:bold;}\",\r\n");
      out.write("        button_text_left_padding:12,\r\n");
      out.write("        button_text_top_padding:3,\r\n");
      out.write("        button_placeholder_id:\"btnPlaceHolder\",\r\n");
      out.write("        // The event handler funtion\r\n");
      out.write("        file_queued_handler:fileQueued,\r\n");
      out.write("        file_queue_error_handler:fileQueueError,\r\n");
      out.write("        file_dialog_complete_handler:fileDialogComplete,\r\n");
      out.write("        upload_start_handler:uploadStart,\r\n");
      out.write("        upload_progress_handler:uploadProgress,\r\n");
      out.write("        upload_error_handler:uploadError,\r\n");
      out.write("        upload_success_handler:uploadSuccess,\r\n");
      out.write("        upload_complete_handler:uploadComplete,\r\n");
      out.write("        queue_complete_handler:queueComplete\r\n");
      out.write("    };\r\n");
      out.write("    swfu = new SWFUpload(settings);\r\n");
      out.write("};\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div id=\"uploadProgress\" class=\"fieldset\">\r\n");
      out.write("        <span class=\"legend\">Upload Queue</span>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div id=\"divStatus\">0 Files Uploaded</div>\r\n");
      out.write("    <div>\r\n");
      out.write("        <span id=\"btnPlaceHolder\"></span>\r\n");
      out.write("        <input id=\"btnCancel\" type=\"button\" value=\"取消上传\" onclick=\"swfu.cancelQueue()\" disabled=\"disabled\"/>\r\n");
      out.write("    </div>\r\n");
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
