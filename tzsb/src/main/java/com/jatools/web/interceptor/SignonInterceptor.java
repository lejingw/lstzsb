package com.jatools.web.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jatools.common.CommonUtil;

public class SignonInterceptor extends HandlerInterceptorAdapter {
	
	private Logger logger = Logger.getLogger(this.getClass().getName());
	
//	private final String mappingUrl = "^.*" + StringUtil.getContextPath() + "(/login.vm|/error.vm)$";
	private final String loginUrl = "/login/false.do";


	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String url = request.getRequestURL().toString();
//		if (url.matches(mappingUrl))
		if(url.indexOf("/login/")>=0 || url.indexOf("/error/")>=0)
			return true;
		if (!CommonUtil.isLogined(request)){
			RequestDispatcher rd = request.getRequestDispatcher(loginUrl);
			rd.forward(request, response);
//			response.sendRedirect(loginUrl);
			return false;
		}
		logger.debug(handler.getClass().getName() + " 开始执行...");
		return true;
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
