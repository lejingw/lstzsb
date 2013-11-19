package com.lejingw.apps.ws31;

import java.util.ArrayList;
import java.util.List;

import javax.jws.HandlerChain;
import javax.jws.WebService;

import com.totyu.common.Pager;

@WebService(endpointInterface="com.lejingw.apps.ws31.IHello3WsService",
			portName="Hello3WsServicePort",
			serviceName="Hello3WsService",
			targetNamespace="http://ws3.apps.lejingw.com",
			wsdlLocation="/WEB-INF/wsdl31/hello3.wsdl")
//			wsdlLocation="META-INF/wsdl31/hello3.wsdl")
//@HandlerChain(file="aaa.xml")
public class Hello3WsService implements IHello3WsService {
	//希望通过serv而获取HttpServlet的API，需要先注入WebServiceContext
//	@Resource
//	private WebServiceContext webServiceContext;
	
	@Override
	public String sayHello(String name, String licenseInfo) throws Hello3WsException{
//		MessageContext soapMessageContext = webServiceContext.getMessageContext();
		//获取HttpServletRequest
//		HttpServletRequest request = (HttpServletRequest)soapMessageContext.get(SOAPMessageContext.SERVLET_REQUEST);	
//		System.out.println(request.getSession().getServletContext().getRealPath("/"));
//		String userInfo = (String)request.getSession().getAttribute("userInfo");
		
		System.out.println("==:sayHello");
		System.out.println("hello " + name + "---"+licenseInfo);
		if(null == licenseInfo || "".equals(licenseInfo.trim())) throw new Hello3WsException("不能获取用户认证信息");
		if(!"admin123".equals(licenseInfo)) throw new Hello3WsException("用户不为admin123");
		return "hello " + name;
	}

	@Override
	public List<Pager> getPagerList(int start, int limit) {
		System.out.println("==:getPagerList");
		List<Pager> list = new ArrayList<Pager>();
		Pager pager = new Pager();
		pager.setStart(start);
		pager.setLimit(limit);
		list.add(pager);
		
		Pager pager2 = new Pager();
		pager2.setStart(13);
		pager2.setLimit(33333333);
		list.add(pager2);
		return list;
	}

	@Override
	public String getPagerStr(Pager pager) {
		System.out.println("==:getPagerStr");
		return pager.toString();
	}

}
