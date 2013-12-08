package com.lejingw.apps.ws2;

import javax.jws.WebService;

@WebService(serviceName="HelloService",
portName="HelloServicePort",
endpointInterface="com.lejingw.apps.ws2.IHelloService",
targetNamespace="http://ws2.apps.lejingw.com",
wsdlLocation="wsdl/ws2/hello.wsdl")
public class HelloServiceSEI implements IHelloService {

	@Override
	public String sayHello(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pager getPager(int start, int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPagerStr(Pager pager) {
		// TODO Auto-generated method stub
		return null;
	}

}
