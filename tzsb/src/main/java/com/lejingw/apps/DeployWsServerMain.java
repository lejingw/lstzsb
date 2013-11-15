package com.lejingw.apps;

import javax.xml.ws.Endpoint;

import com.lejingw.apps.ws2.Hello2WsService;

public class DeployWsServerMain {
	public static void main(String[] args) {
		Endpoint.publish("http://localhost:8888/ss",new Hello2WsService());
	}
}
