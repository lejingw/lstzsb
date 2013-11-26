package com.lejingw.apps.ws4;

import javax.activation.DataHandler;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlMimeType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "Customer")
@XmlAccessorType(XmlAccessType.FIELD)
//标注JAXB 在进行JAVA 对象与XML 之间进行转换时只关注字段，而不关注属性(getXXX()方法)
public class Customer {
	private long id;
	private String name;
	@XmlMimeType("application/octet-stream")
	private DataHandler myPhoto;

	public void setId(long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setMyPhoto(DataHandler myPhoto) {
		this.myPhoto = myPhoto;
	}

	public long getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public DataHandler getMyPhoto() {
		return this.myPhoto;
	}

}
