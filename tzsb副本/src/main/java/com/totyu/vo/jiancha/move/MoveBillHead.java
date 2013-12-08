package com.totyu.vo.jiancha.move;

import org.directwebremoting.annotations.DataTransferObject;

@DataTransferObject
public class MoveBillHead {
	private String headid;
	private String billno;
	private String dodate;
	private String outOrgId;
	private String inOrgId;
	private String sumCount;//件数合计
	private String sumWeight;//重量合计
	private String memo;
	private String createDate;
	private String createId;
	private String updateDate;
	private String updateId;
	private String status;
	public String getHeadid() {
		return headid;
	}
	public void setHeadid(String headid) {
		this.headid = headid;
	}
	public String getBillno() {
		return billno;
	}
	public void setBillno(String billno) {
		this.billno = billno;
	}
	public String getDodate() {
		return dodate;
	}
	public void setDodate(String dodate) {
		this.dodate = dodate;
	}
	public String getOutOrgId() {
		return outOrgId;
	}
	public void setOutOrgId(String outOrgId) {
		this.outOrgId = outOrgId;
	}
	public String getInOrgId() {
		return inOrgId;
	}
	public void setInOrgId(String inOrgId) {
		this.inOrgId = inOrgId;
	}
	public String getSumCount() {
		return sumCount;
	}
	public void setSumCount(String sumCount) {
		this.sumCount = sumCount;
	}
	public String getSumWeight() {
		return sumWeight;
	}
	public void setSumWeight(String sumWeight) {
		this.sumWeight = sumWeight;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getCreateId() {
		return createId;
	}
	public void setCreateId(String createId) {
		this.createId = createId;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public String getUpdateId() {
		return updateId;
	}
	public void setUpdateId(String updateId) {
		this.updateId = updateId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
}
