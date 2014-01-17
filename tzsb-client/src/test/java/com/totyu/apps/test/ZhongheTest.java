package com.totyu.apps.test;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.Node;
import org.junit.Before;
import org.junit.Test;

import com.totyu.apps.ws.ZhongheWsService;
import com.totyu.apps.ws.api.ServiceClientConfig;
import com.totyu.apps.ws.api.ServiceConfigException;
import com.totyu.apps.ws.api.WebServiceClientHelper;
import com.totyu.apps.ws.api.ServiceClientConfig.ServiceClientField;
import com.totyu.apps.ws.vo.TestVo;
import com.totyu.apps.ws.zhonghe.ZhongheService;
import com.totyu.common.PropertyUtil;

public class ZhongheTest {
	private final String POST_ORG = "test";
	private final String POST_PASS = "testpassword";
	private final String POST_AREA = "320000";
	private TestVo testData = null;
	
	@Before
	public void initConfig(){
		WebServiceClientHelper.init();
		
		testData = new TestVo();
		testData.setStart(111);
		testData.setLimit(2222);
	}
	
	@Test
	public void test01(){
		try{
			ZhongheService zhongheWebServiceClient = new ZhongheWsService().getTzsbServiceHttpPort();
			
			final String WEB_SERVICE_CLIENT_TRAN_CODE = "scxkz_query";
			ServiceClientConfig clientConfig = WebServiceClientHelper.getServiceClientConfig(WEB_SERVICE_CLIENT_TRAN_CODE);
			
			String inputXML = createInputXML(clientConfig, testData);
			
			String outputXML = zhongheWebServiceClient.doTzsbTranService(
					clientConfig.getTranType(), clientConfig.getOperType(), "",
					inputXML, "");

			Document responseDoc = DocumentHelper.parseText(outputXML); // 将字符串转为XML
			List<Object> returnDataList = analyseResponse(clientConfig, responseDoc);
			printReturnData(returnDataList);
			
//			OutputFormat format = OutputFormat.createPrettyPrint(); // 设置美观的缩进格式，便于阅读
//			XMLWriter writer = new XMLWriter(System.out, format);
//			writer.write(responseDoc);
//			writer.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	private void printReturnData(List<Object> dataList){
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

	public String createInputXML(ServiceClientConfig config, Object obj){
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
			throw new ServiceConfigException("参数类型错误");
		}
		
		Document doc = DocumentHelper.createDocument();
        Element tran = doc.addElement("TRAN");
        Element mes = tran.addElement("MES");
        
        mes.addElement("busi_type").setText("");
        mes.addElement("tran_type").setText(config.getTranType());
        mes.addElement("oper_type").setText(config.getOperType());
        mes.addElement("post_org").setText(POST_ORG);
        mes.addElement("post_pass").setText(POST_PASS);
        mes.addElement("post_area").setText(POST_AREA);
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
