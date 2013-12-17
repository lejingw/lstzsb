package com.totyu.web.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.totyu.common.CommonUtil;

public class SignonInterceptor extends HandlerInterceptorAdapter {

	private Logger logger = Logger.getLogger(this.getClass().getName());

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		if (CommonUtil.isLogined(request)) {
			logger.debug(handler.getClass().getName() + " 开始执行...");
			return super.preHandle(request, response, handler);
		}
		PrintWriter out = response.getWriter();
		StringBuilder builder = new StringBuilder();
		builder.append("<script type=\"text/javascript\" charset=\"UTF-8\">");
	//	builder.append("alert(\"页面过期，请重新登录\");");
		builder.append("var win = window;");
		builder.append("if(window != window.top) win = window.top;");
		builder.append("win.location=\"" + request.getContextPath() + "/index.do\";");
		builder.append("</script>");
		out.print(builder.toString());
		out.close();
		return false;
	}

	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		logger.debug(handler.getClass().getName() + " 执行完毕...");
	}

	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.debug("请求处理完毕...");
	}

}
