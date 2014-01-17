package com.totyu.web.ws;

import java.util.List;

import com.totyu.web.ws.api.WebServiceName;
import com.totyu.web.ws.api.WsException;


public interface WebServiceClient {
	/**
	 * 新增、修改、删除
	Object callAction(WebServiceName serviceName, Object obj)throws WsException;
	 */
	
	/**
	 * 查询
	 */
	List<Object> callQuery(WebServiceName serviceName, Object obj)throws WsException;
}
