package com.totyu.test;

import javax.xml.ws.Endpoint;

import com.lejingw.apps.ws4.Hello4WsServiceImpl;

public class DeployWsServerMain {
	public static void main(String[] args) {
		Endpoint.publish("http://localhost:8888/ss",new Hello4WsServiceImpl());
	}
}
