package com.lejingw.apps.ws31;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebService;

import com.totyu.common.Pager;

@WebService(endpointInterface="com.lejingw.apps.ws31.IHello3WsService",
portName="Hello3WsServicePort",
serviceName="Hello3WsService",
targetNamespace="http://ws3.apps.lejingw.com",
wsdlLocation="/WEB-INF/wsdl31/hello3.wsdl"
)
public class Hello3WsService implements IHello3WsService {

	@Override
	public String sayHello(String name) {
		System.out.println("==:hello " + name + "!");
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
		pager2.setStart(1);
		pager2.setLimit(100);
		list.add(pager2);
		return list;
	}

	@Override
	public String getPagerStr(Pager pager) {
		System.out.println("==:getPagerStr");
		return pager.toString();
	}

}
