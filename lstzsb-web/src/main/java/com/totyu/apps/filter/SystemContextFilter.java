package com.totyu.apps.filter;

import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.totyu.apps.common.model.SystemContext;


public class SystemContextFilter implements Filter {
	private int defaultLimit = 0;

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
	//获取用户列表
		try{
			String startStr = req.getParameter("start");
			String limitStr = req.getParameter("limit");
			int limit = defaultLimit;
			if(null != limitStr){
				try{
					limit = Integer.parseInt(limitStr);
				}catch (NumberFormatException e) {
				}
			}
			int start = getSessionPagerOffset((HttpServletRequest)req, startStr);
				
			String sort = req.getParameter("sort");
			String order = req.getParameter("order");
			SystemContext.setLimit(limit);
			SystemContext.setStart(start);
			SystemContext.setOrder(order);
			SystemContext.setSort(sort);
			SystemContext.setRealPath(((HttpServletRequest)req).getSession().getServletContext().getRealPath(""));
			chain.doFilter(req, resp);
		} finally {
			SystemContext.removeStart();
			SystemContext.removeLimit();
			SystemContext.removeOrder();
			SystemContext.removeSort();
		}
	}
	
	final String PAGE_OFFSET_KEY = "page_offset_key";
	
	private Integer getSessionPagerOffset(HttpServletRequest req, String offset){
		HttpSession session = req.getSession();
		final String requestUrl = req.getRequestURI();
		
		@SuppressWarnings("unchecked")
		Map<String, Integer> map = (Map<String, Integer>) session.getAttribute(PAGE_OFFSET_KEY);
		Integer pageOffset = 0;
		synchronized(this.getClass()){
			if(null == map){
				map = new ConcurrentHashMap<String, Integer>();
				session.setAttribute(PAGE_OFFSET_KEY, map);
			}
			if(null != offset){
				try{
					pageOffset = Integer.parseInt(offset);
				}catch (NumberFormatException e) {
				}
				map.put(requestUrl, pageOffset);
			}else{
				pageOffset = map.get(requestUrl);
				if(null == pageOffset){
					pageOffset = 0;
				}
			}
		}
		return pageOffset;
	}

	@Override
	public void init(FilterConfig conf) throws ServletException {
		if(conf.getInitParameter("limit")!=null) {
			defaultLimit = Integer.parseInt(conf.getInitParameter("limit"));
		} else {
			defaultLimit = 2;
		}
	}
}
