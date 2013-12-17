package com.totyu.vo.qiye.jbxx;

import org.directwebremoting.annotations.DataTransferObject;

import com.totyu.vo.BaseVo;

@DataTransferObject
public class Scxkzgl extends BaseVo {
	private String billid;
	private String dwId;//单位_ID
	private String sblb;//设备类别
	private String zsbh;//证书编号
	private String dwmc;//单位名称
	private String dwdz;//单位地址
	private String zzdz;//制造地址
	private String pzrq;//批准日期
	private String yxrq;//有效日期
	private String pzjg;//批准机构
	private String sfsj;//是否设计
	private String sfzz;//是否制造
	private String sfaz;//是否安装
	private String sfgz;//是否改造
	private String sfwx;//是否维修
	private String beizhu;//备注
	
	public String getBillid() {
		return billid;
	}

	public void setBillid(String billid) {
		this.billid = billid;
	}

	public String getDwId() {
		return dwId;
	}

	public void setDwId(String dwId) {
		this.dwId = dwId;
	}

	public String getSblb() {
		return sblb;
	}

	public void setSblb(String sblb) {
		this.sblb = sblb;
	}

	public String getZsbh() {
		return zsbh;
	}

	public void setZsbh(String zsbh) {
		this.zsbh = zsbh;
	}

	public String getDwmc() {
		return dwmc;
	}

	public void setDwmc(String dwmc) {
		this.dwmc = dwmc;
	}

	public String getDwdz() {
		return dwdz;
	}

	public void setDwdz(String dwdz) {
		this.dwdz = dwdz;
	}

	public String getPzrq() {
		return pzrq;
	}

	public void setPzrq(String pzrq) {
		this.pzrq = pzrq;
	}

	public String getYxrq() {
		return yxrq;
	}

	public void setYxrq(String yxrq) {
		this.yxrq = yxrq;
	}

	public String getPzjg() {
		return pzjg;
	}

	public void setPzjg(String pzjg) {
		this.pzjg = pzjg;
	}

	public String getSfsj() {
		return sfsj;
	}

	public void setSfsj(String sfsj) {
		this.sfsj = sfsj;
	}

	public String getSfzz() {
		return sfzz;
	}

	public void setSfzz(String sfzz) {
		this.sfzz = sfzz;
	}

	public String getSfaz() {
		return sfaz;
	}

	public void setSfaz(String sfaz) {
		this.sfaz = sfaz;
	}

	public String getSfgz() {
		return sfgz;
	}

	public void setSfgz(String sfgz) {
		this.sfgz = sfgz;
	}

	public String getSfwx() {
		return sfwx;
	}

	public void setSfwx(String sfwx) {
		this.sfwx = sfwx;
	}

	public String getBeizhu() {
		return beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	public String getZzdz() {
		return zzdz;
	}

	public void setZzdz(String zzdz) {
		this.zzdz = zzdz;
	}
	
}
