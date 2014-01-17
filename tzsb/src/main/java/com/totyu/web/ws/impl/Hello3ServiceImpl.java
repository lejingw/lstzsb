package com.totyu.web.ws.impl;

import javax.jws.WebService;

import com.totyu.common.Pager;
import com.totyu.web.ws.Hello3Service;
import com.totyu.web.ws.api.WsException;

@WebService(
		endpointInterface="com.totyu.web.ws.Hello3Service",
		name = "Hello3Service",
		serviceName="Hello3WsService",
		targetNamespace = "http://ws.web.totyu.com",
		wsdlLocation="/WEB-INF/wsdl/hello3WsService.wsdl"
	)
public class Hello3ServiceImpl implements Hello3Service {

	@Override
	public String sayHello(String name) throws WsException {
		System.out.println("==:hello " + name + "!");
		if("world".equals(name))
			throw new WsException("name can't be world");
		return "hello " + name;
	}

	@Override
	public Pager getPager(int start, int limit) throws WsException {
		if(start<0)
			throw new WsException("start 不能小于0");
		System.out.println("==:getPager");
		Pager pager = new Pager();
		pager.setLimit(limit);
		pager.setStart(start);
		return pager;
	}

	@Override
	public String getPagerStr(Pager pager) throws WsException {
		System.out.println("==:getPagerStr");
		return pager.toString();
	}

}
