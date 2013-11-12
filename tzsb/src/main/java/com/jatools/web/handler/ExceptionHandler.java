package com.jatools.web.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * serverlet 捕获异常，处理类
 */
public class ExceptionHandler implements HandlerExceptionResolver {

	private static Logger logger = Logger.getLogger(ExceptionHandler.class
			.getName());

	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
		// 记录异常信息
		logger.debug("系统发生异常：", ex);
		StringBuffer buff = new StringBuffer(
				"<table style='width:100%'><tr><td width='50%'>class</td><td width='30%'>method</td><td>line No</td></tr>");
		StackTraceElement[] sts = ex.getStackTrace();
		for (StackTraceElement st : sts) {
			buff.append("<tr><td>" + st.getClassName() + "</td><td>"
					+ st.getMethodName() + "</td><td>" + st.getLineNumber()
					+ "</td></tr>");
		}
		buff.append("</table>");
		// 根据异常类型的不同，提供不同的异常提示
		// String error = "系统发生异常，请稍后处理业务！";

		return new ModelAndView("error", "error", buff.toString());
	}

}
