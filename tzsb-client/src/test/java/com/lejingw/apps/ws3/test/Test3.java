package com.lejingw.apps.ws3.test;

import java.net.MalformedURLException;
import java.util.List;

import com.lejingw.apps.ws31.Hello3WsException_Exception;
import com.lejingw.apps.ws31.Hello3WsService;
import com.lejingw.apps.ws31.IHello3WsService;
import com.lejingw.apps.ws31.Pager;



public class Test3 {
	@org.junit.Test
	public void test01() throws MalformedURLException{
		IHello3WsService service = new Hello3WsService().getHello3WsServicePort();
		try {
			System.out.println(service.sayHello("world"));
		} catch (Hello3WsException_Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@org.junit.Test
	public void test02() throws MalformedURLException{
		IHello3WsService service = new Hello3WsService().getHello3WsServicePort();
		List<Pager> list = service.getPagerList(13,10);
		for(Pager p : list){
			System.out.println(p.getStart()+":"+p.getLimit());
		}
		System.out.println(service.getPagerStr(list.get(0)));
	}
}
