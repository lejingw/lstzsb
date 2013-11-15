package com.lejingw.apps.ws;

import javax.jws.WebService;

import com.totyu.common.Pager;

@WebService(endpointInterface = "com.lejingw.apps.ws.IHelloWsService",
			serviceName = "HelloWsService",
			targetNamespace = "http://ws.apps.lejingw.com",
			portName = "HelloWsServicePort",
//			wsdlLocation = "META-INF/wsdl/hello.wsdl")
			wsdlLocation = "/WEB-INF/wsdl/hello.wsdl")
public class HelloWsService implements IHelloWsService {

	@Override
	public String sayHello(String name) {
		System.out.println("==:hello " + name + "!");
		return "hello " + name;
	}

	@Override
	public Pager getPager(int start, int limit) {
		System.out.println("==:getPager");
		Pager pager = new Pager();
		pager.setLimit(limit);
		pager.setStart(start);
		return pager;
	}

	@Override
	public String getPagerStr(Pager pager) {
		System.out.println("==:getPagerStr");
		return pager.toString();
	}

}
