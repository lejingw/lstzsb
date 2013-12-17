package com.totyu.vo.common;

import org.directwebremoting.annotations.DataTransferObject;

@DataTransferObject
public class Org {
	private String orgId;
	private String orgName;
	private String orgType;//0企业单位1监察单位2乡镇部门3行业主管部门
	private String parentId;//父节点id
	
	public String getOrgId() {
		return orgId;
	}
	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getOrgType() {
		return orgType;
	}
	public void setOrgType(String orgType) {
		this.orgType = orgType;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
}
