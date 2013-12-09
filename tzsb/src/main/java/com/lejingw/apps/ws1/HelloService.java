package com.lejingw.apps.ws1;

import javax.jws.WebMethod;
import javax.jws.WebService;

import com.totyu.common.Pager;

/**
 * 自顶向下
 * @author lejingw
 *
 */
@WebService
public class HelloService {
	
	@WebMethod
	public String sayHello(String name){
		System.out.println("hello " + name + "!");
		return "hello " + name;
	}
	@WebMethod
	public Pager getPager(int start, int limit){
		Pager pager = new Pager();
		pager.setStart(start);
		pager.setLimit(limit);
		return pager;
	}
	@WebMethod
	public String getPagerStr(Pager pager){
		return "[" + pager.getStart() + ":" + pager.getLimit() + "]";
	}
}
