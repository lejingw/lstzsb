package com.totyu.vo.jiancha.move;

import org.directwebremoting.annotations.DataTransferObject;

@DataTransferObject
public class MoveBillLine {
	private String lineid;
	private String headid;
	private String ornaCode;
	private String ornaDsc;
	private String orgId;
	private Double weight;
	private String status;
	public String getLineid() {
		return lineid;
	}
	public void setLineid(String lineid) {
		this.lineid = lineid;
	}
	public String getHeadid() {
		return headid;
	}
	public void setHeadid(String headid) {
		this.headid = headid;
	}
	public String getOrnaCode() {
		return ornaCode;
	}
	public void setOrnaCode(String ornaCode) {
		this.ornaCode = ornaCode;
	}
	public String getOrnaDsc() {
		return ornaDsc;
	}
	public void setOrnaDsc(String ornaDsc) {
		this.ornaDsc = ornaDsc;
	}
	public String getOrgId() {
		return orgId;
	}
	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}
	public Double getWeight() {
		return weight;
	}
	public void setWeight(Double weight) {
		this.weight = weight;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
