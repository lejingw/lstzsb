package com.lejingw.apps;

import javax.xml.ws.Endpoint;

import com.lejingw.apps.ws1.HelloService;
import com.lejingw.apps.ws2.HelloServiceSEI;

public class PulishWebServieMain {
	public static void main(String[] args) {
		//http://localhost:8080/HelloService?wsdl
		//JDK6提供了发布Web Service的简便方法
//		Endpoint.publish("http://localhost:8080/HelloService", new HelloService());
		//如果是从WSDL生成的Web Service，则为
		Endpoint.publish("http://localhost:8080/HelloService", new HelloServiceSEI());
	}
}
