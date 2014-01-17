package com.totyu.web.ws.api;

public enum WebServiceName {
	SCXKZ_QUERY("scxkz_query");

	private String name;

	private WebServiceName(String name) {
		this.name = name;
	}
	public String getName(){
		return name;
	}
}