
package com.lejingw.apps.ws2;

import com.totyu.common.Pager;


public interface IHelloWsService {
	public String sayHello(String name);
	public Pager getPager(int start, int limit);
	public String getPagerStr(Pager pager);

}
