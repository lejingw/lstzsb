package com.lejingw.apps.ws2;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;

import com.totyu.common.Pager;

//@WebService(endpointInterface = "com.lejingw.apps.ws2.IHelloWsService",
//			serviceName = "HelloWsService",
//			targetNamespace = "http://ws.apps.lejingw.com",
//			portName = "HelloWsServicePort",
////		wsdlLocation = "META-INF/wsdl/hello.wsdl")
//			wsdlLocation = "/WEB-INF/wsdl/hello.wsdl")
@WebService(
serviceName = "Hello2WsService",
targetNamespace = "http://ws2.apps.lejingw.com",
portName = "Hello2WsServicePort",
wsdlLocation = "/WEB-INF/wsdl2/Hello2WsService.wsdl")
public class Hello2WsService {
	
	@WebMethod
	public String sayHello(String name) {
		System.out.println("==:hello " + name + "!");
		return "hello " + name;
	}

	@WebMethod
	public Pager getPager(int start, int limit) {
		System.out.println("==:getPager");
		Pager pager = new Pager();
		pager.setLimit(limit);
		pager.setStart(start);
		return pager;
	}

	@WebMethod
	public List<Pager> getPagerList(Pager pager) {
		List<Pager> list = new ArrayList<Pager>();
		list.add(pager);
		Pager pager2 = new Pager();
		pager2.setStart(1);
		pager2.setLimit(100);
		list.add(pager2);
		System.out.println("==:getPagerList");
		return list;
	}

}
