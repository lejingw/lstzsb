package com;

import javax.xml.ws.Endpoint;

import com.lejingw.apps.ws.HelloWsService;

public class MyServer {
	public static void main(String[] args) {
		Endpoint.publish("http://localhost:8888/ss",new HelloWsService());
	}
}
