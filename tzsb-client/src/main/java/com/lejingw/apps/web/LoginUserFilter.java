package com.lejingw.apps.web;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class LoginUserFilter implements Filter {
	public static final String LOGIN_USER_NAME = "loginUserName";
	

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		String userName = (String) req.getSession().getAttribute(LOGIN_USER_NAME);
		try {
			System.out.println("============="+userName);
			if(null != userName){
				LoginUserContext.setLoginUser(userName);
			}
			chain.doFilter(request, response);
		} finally {
			LoginUserContext.removeLoginUser();
		}
	}

	@Override
	public void destroy() {
	}

}
