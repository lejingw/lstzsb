package com.lejingw.apps.ws2;

import java.util.ArrayList;
import java.util.List;

import javax.jws.HandlerChain;
import javax.jws.WebMethod;
import javax.jws.WebParam;
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
portName = "Hello2WsServicePort"
,wsdlLocation = "/WEB-INF/wsdl2/Hello2WsService.wsdl"
)
public class Hello2WsService {
	
	@WebMethod
	public String sayHello(String name) {
		System.out.println("==:hello " + name + "!");
		try {Thread.sleep(500L);} catch (InterruptedException e) {e.printStackTrace();}
		return "hello " + name;
	}

	@WebMethod
	public Pager getPager(int start, int limit) {
		System.out.println("==:getPager");
		Pager pager = new Pager();
		pager.setLimit(limit);
		pager.setStart(start);
		try {Thread.sleep(500L);} catch (InterruptedException e) {e.printStackTrace();}
		return pager;
	}

	@WebMethod
	public String getPagerStr(Pager pager){
		System.out.println("==:getPagerStr");
		try {Thread.sleep(500L);} catch (InterruptedException e) {e.printStackTrace();}
		return pager.getStart()+":"+pager.getLimit();
	}

	@WebMethod
	public List<Pager> getPagerList(Pager pager) {
		List<Pager> list = new ArrayList<Pager>();
		list.add(pager);
		Pager pager2 = new Pager();
		pager2.setStart(12);
		pager2.setLimit(22222222);
		list.add(pager2);
		System.out.println("==:getPagerList");
		try {Thread.sleep(500L);} catch (InterruptedException e) {e.printStackTrace();}
		return list;
	}
	@WebMethod
	public void savaPicData2(byte[] data) {
		String str = new String(data);
		System.out.println(str);
	}
}
