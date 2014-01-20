package com.totyu.vo.menhu.sys;

public class User {
	private String id;
	private String username;
	private String userlabel;
	private String password;
	private String orgid;
	private String status;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOrgid() {
		return orgid;
	}

	public void setOrgid(String orgid) {
		this.orgid = orgid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserlabel() {
		return userlabel;
	}

	public void setUserlabel(String userlabel) {
		this.userlabel = userlabel;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public String toString(){
		return "[" + this.username + ":" + this.password + "]";
	}
}
