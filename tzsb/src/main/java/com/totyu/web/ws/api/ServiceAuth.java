package com.totyu.web.ws.api;

public class ServiceAuth {
	private String name;
	private String password;
	private String org;

	public ServiceAuth(String name, String password, String org) {
		this.name = name;
		this.password = password;
		this.org = org;
	}

	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public String getOrg() {
		return org;
	}

}
