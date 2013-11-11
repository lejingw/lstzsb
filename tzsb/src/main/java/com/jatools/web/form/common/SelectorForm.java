package com.jatools.web.form.common;

import java.util.List;
import java.util.Map;

import com.jatools.common.CommonUtil;

public class SelectorForm {
	private boolean multiFlag = false;
	private String selectedValues;
	@SuppressWarnings("rawtypes")
	private List dataList;
	@SuppressWarnings("rawtypes")
	private Map dataMap;
	private String type;
	private String orgId;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public SelectorForm() {
	}

	public SelectorForm(boolean multiFlag, String selectedValues, String handoverBillId,String allowInivType,String iniv,
			String itemClassId,String ornaClassId,String styleItemId,String styleMiddleId,String styleOrnaId,String vender) {
		this.multiFlag = multiFlag;
		this.selectedValues = selectedValues;
	}
	public SelectorForm(boolean multiFlag, String selectedValues) {
		this.multiFlag = multiFlag;
		this.selectedValues = selectedValues;
	}
	public boolean isMultiFlag() {
		return multiFlag;
	}

	public void setMultiFlag(boolean multiFlag) {
		this.multiFlag = multiFlag;
	}

	public String getSelectedValues() {
		return selectedValues;
	}

	public void setSelectedValues(String selectedValues) {
		this.selectedValues = selectedValues;
	}

	@SuppressWarnings("rawtypes")
	public List getDataList() {
		return dataList;
	}

	@SuppressWarnings("rawtypes")
	public void setDataList(List dataList) {
		this.dataList = dataList;
	}

	@SuppressWarnings("rawtypes")
	public Map getDataMap() {
		return dataMap;
	}

	@SuppressWarnings("rawtypes")
	public void setDataMap(Map dataMap) {
		this.dataMap = dataMap;
	}

	public String getOrgId() {
		return orgId;
	}

	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}

}