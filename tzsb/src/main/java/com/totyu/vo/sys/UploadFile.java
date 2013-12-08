package com.totyu.vo.sys;

import org.directwebremoting.annotations.DataTransferObject;

@DataTransferObject
public class UploadFile {

	private String id;
	private String laiyuan;
	private String lyid;
	private String shunxu;
	private String mingcheng;
	private String path;
	private String createId;
	private String createDate;
	private String status;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLaiyuan() {
		return laiyuan;
	}

	public void setLaiyuan(String laiyuan) {
		this.laiyuan = laiyuan;
	}

	public String getLyid() {
		return lyid;
	}

	public void setLyid(String lyid) {
		this.lyid = lyid;
	}

	public String getShunxu() {
		return shunxu;
	}

	public void setShunxu(String shunxu) {
		this.shunxu = shunxu;
	}

	public String getMingcheng() {
		return mingcheng;
	}

	public void setMingcheng(String mingcheng) {
		this.mingcheng = mingcheng;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getCreateId() {
		return createId;
	}

	public void setCreateId(String createId) {
		this.createId = createId;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
