package com.totyu.vo.qiye.jbxx;

import org.directwebremoting.annotations.DataTransferObject;

import com.totyu.vo.common.Org;

/**
 * 单位信息
 * @author wanglj
 *
 */
@DataTransferObject
public class Dwxx extends Org{
	private String orgType = "0";
	private String dwzcdzxx;//单位注册地址
	public String getDwzcdzxx() {
		return dwzcdzxx;
	}
	public void setDwzcdzxx(String dwzcdzxx) {
		this.dwzcdzxx = dwzcdzxx;
	}
	
}
