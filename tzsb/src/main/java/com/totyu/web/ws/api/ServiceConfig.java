package com.totyu.web.ws.api;

import java.util.HashMap;
import java.util.Map;

public class ServiceConfig {
	private String tranCode;
	private String serviceClassName;
	private String serviceMethod;
	private String parameterType;
	private Map<String, ServiceField> fieldMap = new HashMap<String, ServiceField>();

	public String getTranCode() {
		return tranCode;
	}

	public void setTranCode(String tranCode) {
		this.tranCode = tranCode;
	}

	public String getServiceClassName() {
		return serviceClassName;
	}

	public void setServiceClassName(String serviceClassName) {
		this.serviceClassName = serviceClassName;
	}

	public String getServiceMethod() {
		return serviceMethod;
	}

	public void setServiceMethod(String serviceMethod) {
		this.serviceMethod = serviceMethod;
	}

	public String getParameterType() {
		return parameterType;
	}

	public void setParameterType(String parameterType) {
		this.parameterType = parameterType;
	}
	
	public Map<String, ServiceField> getFieldMap() {
		return fieldMap;
	}

	public void setFieldMap(Map<String, ServiceField> fieldMap) {
		this.fieldMap = fieldMap;
	}

	public void addField(ServiceField field){
		this.fieldMap.put(field.getName(), field);
	}

	public static class ServiceField {
		private String name;
		private String type;//string int float date
		private boolean required;
		private String description;

		private String minLength;//type='string'
		private String maxLength;//type='string'
		private String min;//type='int' or type='float'
		private String max;//type='int' or type='float'
		private String dateFormat;//type='date'
		
//		public ServiceField(){
//			
//		}
		
		public ServiceField(String name, String type, boolean required,
				String description) {
			this.name = name;
			this.type = type;
			this.required = required;
			this.description = description;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}

		public boolean getRequired() {
			return required;
		}

		public void setRequired(boolean required) {
			this.required = required;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getMinLength() {
			return minLength;
		}

		public void setMinLength(String minLength) {
			this.minLength = minLength;
		}

		public String getMaxLength() {
			return maxLength;
		}

		public void setMaxLength(String maxLength) {
			this.maxLength = maxLength;
		}

		public String getMin() {
			return min;
		}

		public void setMin(String min) {
			this.min = min;
		}

		public String getMax() {
			return max;
		}

		public void setMax(String max) {
			this.max = max;
		}

		public String getDateFormat() {
			return dateFormat;
		}

		public void setDateFormat(String dateFormat) {
			this.dateFormat = dateFormat;
		}
	}
}