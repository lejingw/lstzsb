package com.totyu.web.ws.impl;


import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

import com.totyu.common.PropertyUtil;
import com.totyu.web.ws.WebServiceClient;
import com.totyu.web.ws.api.ServiceClientConfig;
import com.totyu.web.ws.api.ServiceClientConfig.ServiceClientField;
import com.totyu.web.ws.api.ServiceConfigException;
import com.totyu.web.ws.api.WebServiceClientHelper;
import com.totyu.web.ws.api.WebServiceName;
import com.totyu.web.ws.api.WsException;
import com.totyu.web.ws.client.ZhongheWebServiceClient;


public class WebServiceClientImpl implements WebServiceClient {
	private ZhongheWebServiceClient zhongheWebServiceClient;
	private String postOrg;
	private String postPass;
	private String postArea;

	public void setZhongheWebServiceClient(ZhongheWebServiceClient zhongheWebServiceClient) {
		this.zhongheWebServiceClient = zhongheWebServiceClient;
	}
	
	public void setPostOrg(String postOrg) {
		this.postOrg = postOrg;
	}

	public void setPostPass(String postPass) {
		this.postPass = postPass;
	}

	public void setPostArea(String postArea) {
		this.postArea = postArea;
	}
	
	/**
	 * 新增、修改、删除
	 */
	public Object callAction(WebServiceName serviceName, Object obj)throws WsException{
		return null;
	}

	/**
	 * 查询
	 */
	public List<Object> callQuery(WebServiceName serviceName, Object obj)throws WsException{
		ServiceClientConfig clientConfig = WebServiceClientHelper.getServiceClientConfig(serviceName.getName());
		if(null == clientConfig){
			throw new WsException("不能获取webservice["+serviceName.getName()+"]配置信息");
		}
		
		Document responseDoc = null;
		try{
			String inputXML = createInputXML(clientConfig, obj);
			
			String outputXML = zhongheWebServiceClient.doTzsbTranService(
					clientConfig.getTranType(), clientConfig.getOperType(), "",
					inputXML, "");

			responseDoc = DocumentHelper.parseText(outputXML); // 将字符串转为XML
		}catch(Exception e){
			throw new WsException(e.getMessage());
		}
		
		Node rtncodeNode = responseDoc.selectSingleNode("/TRAN/MES/rtncode");
		if(null != rtncodeNode && "1".equals(rtncodeNode.getText())){
			try{
				List<Object> returnDataList = analyseResponse(clientConfig, responseDoc);
				printReturnData(responseDoc, returnDataList);
				return returnDataList;
			}catch(Exception e){
				throw new WsException(e.getMessage());
			}
		}else{
			Node mesNode = responseDoc.selectSingleNode("/TRAN/MES/clew/mes");
			if(null != mesNode){
				throw new WsException(mesNode.getText());
			}else{
				throw new WsException("调用webservice失败,无法获取异常信息");
			}
		}
	}

	private void printReturnData(Document responseDoc, List<Object> dataList) throws IOException{
		OutputFormat format = OutputFormat.createPrettyPrint(); // 设置美观的缩进格式，便于阅读
		XMLWriter writer = new XMLWriter(System.out, format);
		writer.write(responseDoc);
		writer.close();
		
		System.out.println(dataList);
		if(null == dataList)
			return ;
		try{
			for(Object obj : dataList){
				Field[] fs = obj.getClass().getDeclaredFields();
				for(Field f:fs){
					System.out.print("[" + f.getName() + ":" + PropertyUtil.getProperty(obj, f.getName()) + "]\t");
				}
				System.out.println();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	private List<Object> analyseResponse(ServiceClientConfig config, Document doc) {
		List<Element> nodeList = doc.selectNodes("/TRAN/DATA/ROW");
		
		List<Object> dataList = new ArrayList<Object>();
		Class returnCls = null;
		try {
			returnCls = Class.forName(config.getOutputClassName());
		} catch (ClassNotFoundException e) {
			throw new ServiceConfigException("无法获取配置文件中输出参数类型");
		}
		try{
			for(Element element:nodeList){
				Object data = returnCls.newInstance();
				
				Map<String, ServiceClientField> fieldMap = config.getOutputFieldMap();
				for(String fieldName : fieldMap.keySet()){
					ServiceClientField field = fieldMap.get(fieldName);
					Node node = element.selectSingleNode(field.getRemoteName());
					if(null != node){					
						String val = node.getText();
						if(null != val){
//							System.out.println(field.getInName()+"---"+val);
							PropertyUtil.setProperty(data, field.getInName(), val);
						}
					}
				}
				dataList.add(data);
			}
		}catch(Exception e){
			throw new ServiceConfigException("解析输出XML数据出错");
		}
		return dataList;
	}
	
	private String createInputXML(ServiceClientConfig config, Object obj){
		if(null == obj){
			throw new ServiceConfigException("参数不能为空");
		}
		Class inputCls = null;
		try {
			inputCls = Class.forName(config.getInputClassName());
		} catch (ClassNotFoundException e1) {
			throw new ServiceConfigException("无法获取配置文件中输入参数类型");
		}
		if(obj.getClass() != inputCls){
			throw new ServiceConfigException("传入参数类型错误");
		}
		
		Document doc = DocumentHelper.createDocument();
        Element tran = doc.addElement("TRAN");
        Element mes = tran.addElement("MES");
        
        mes.addElement("busi_type").setText("");
        mes.addElement("tran_type").setText(config.getTranType());
        mes.addElement("oper_type").setText(config.getOperType());
        mes.addElement("post_org").setText(postOrg);
        mes.addElement("post_pass").setText(postPass);
        mes.addElement("post_area").setText(postArea);
        mes.addElement("post_condition");
        mes.addElement("explain");
        
        try {
            Element data = tran.addElement("DATA");
            
			Map<String, ServiceClientField> fieldMap = config.getInputFieldMap();
			for(String fieldName : fieldMap.keySet()){
				ServiceClientField field = fieldMap.get(fieldName);
				Element propertyElement = data.addElement(field.getOutName());
				
        		String val = PropertyUtil.getProperty(obj, field.getLocalName());
        		if(null != val){
        			propertyElement.setText(val);
        		}
			}
		} catch (Exception e) {
			throw new ServiceConfigException("创建输入XML数据出错");
		}
        
        System.out.println(doc.asXML());
        return doc.asXML();
	}
}
