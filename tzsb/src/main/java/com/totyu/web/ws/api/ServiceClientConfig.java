package com.totyu.web.ws.api;

import java.util.HashMap;
import java.util.Map;

public class ServiceClientConfig {
	private String tranCode;
	private String tranType;
	private String operType;
	private String inputClassName;
	private String outputClassName;
	
	private Map<String, ServiceClientField> inputFieldMap = new HashMap<String, ServiceClientField>();
	private Map<String, ServiceClientField> outputFieldMap = new HashMap<String, ServiceClientField>();

	public String getTranCode() {
		return tranCode;
	}

	public void setTranCode(String tranCode) {
		this.tranCode = tranCode;
	}

	public String getTranType() {
		return tranType;
	}

	public void setTranType(String tranType) {
		this.tranType = tranType;
	}

	public String getOperType() {
		return operType;
	}

	public void setOperType(String operType) {
		this.operType = operType;
	}

	public String getInputClassName() {
		return inputClassName;
	}

	public void setInputClassName(String inputClassName) {
		this.inputClassName = inputClassName;
	}

	public String getOutputClassName() {
		return outputClassName;
	}

	public void setOutputClassName(String outputClassName) {
		this.outputClassName = outputClassName;
	}

	public Map<String, ServiceClientField> getInputFieldMap() {
		return inputFieldMap;
	}

	public void setInputFieldMap(Map<String, ServiceClientField> inputFieldMap) {
		this.inputFieldMap = inputFieldMap;
	}

	public Map<String, ServiceClientField> getOutputFieldMap() {
		return outputFieldMap;
	}

	public void setOutputFieldMap(Map<String, ServiceClientField> outputFieldMap) {
		this.outputFieldMap = outputFieldMap;
	}

	public void addInputField(ServiceClientField sf) {
		if(null == sf.getLocalName())
			throw new RuntimeException("input field[" + sf + "] localName 不能为空");
		this.inputFieldMap.put(sf.getLocalName(), sf);
	}

	public void addOutputField(ServiceClientField sf) {
		if(null == sf.getRemoteName())
			throw new RuntimeException("output field[" + sf + "] remoteName 不能为空");
		this.outputFieldMap.put(sf.getRemoteName(), sf);
	}

	public static class ServiceClientField {
		private String localName;
		private String remoteName;
		private String description;

		public ServiceClientField() {

		}

		public ServiceClientField(String localName, String remoteName,
				String description) {
			this.localName = localName;
			this.remoteName = remoteName;
			this.description = description;
		}

		public String getOutName() {
			if(null == remoteName)
				return localName;
			return remoteName;
		}
		
		public String getInName() {
			if(null == localName)
				return remoteName;
			return localName;
		}
		
		public String getLocalName() {
			return localName;
		}

		public void setLocalName(String localName) {
			this.localName = localName;
		}

		public String getRemoteName() {
			return remoteName;
		}

		public void setRemoteName(String remoteName) {
			this.remoteName = remoteName;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}
		
		public String toString(){
			return "[localName:" + this.localName + ",remoteName:" + this.remoteName + ",description:" + this.description + "]";
		}
	}

}