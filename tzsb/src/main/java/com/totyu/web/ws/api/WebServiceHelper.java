package com.totyu.web.ws.api;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class WebServiceHelper {
	private static boolean initFlag = false;
	private static final Map<String, ServiceConfig> webServiceConfMap = new HashMap<String, ServiceConfig>();
	private static final Map<String, ServiceAuth> webServiceAuthMap = new HashMap<String, ServiceAuth>();
	
	public static void init(){
		if(initFlag)	return ;
		String path = WebServiceHelper.class.getResource("/conf/webservice/").getPath();
		File dir = new File(path);
		for(File file : dir.listFiles()){
			if(file.isFile()){
				if("auth.xml".equals(file.getName())){
					List<ServiceAuth> authList = analyseServiceAuth(file);
					for(ServiceAuth auth:authList){
						webServiceAuthMap.put(auth.getName(), auth);
					}
				}else{					
					ServiceConfig conf = analyseServiceConfig(file);
					if(null != conf){
						webServiceConfMap.put(conf.getTranCode(), conf);
					}
				}
			}
		}
		initFlag = true;
	}
	
	public static ServiceConfig getServiceConfig(String tranCode){
		if(!initFlag){
			throw new ServiceConfigException("WebServiceHelper have not init.");
		}
		return webServiceConfMap.get(tranCode);
	}
	
	public static ServiceAuth getServiceAuth(String name){
		if(!initFlag){
			throw new ServiceConfigException("WebServiceHelper have not init.");
		}
		return webServiceAuthMap.get(name);
	}
	
	private static List<ServiceAuth> analyseServiceAuth(File file){
		System.out.println("正在解析web service授权用户配置文件["+file.getName()+"]");
		
		List<ServiceAuth> list = new ArrayList<ServiceAuth>();
		try {
			SAXReader reader = new SAXReader();
			//reader.setEncoding("GBK");
			Document doc = reader.read(file);
			List<Element> userList = doc.selectNodes("/users/user");
			for(Element ele:userList){
				Element name = ele.element("name");
				Element password = ele.element("password");
				Element org = ele.element("org");
				list.add(new ServiceAuth(name.getText(), password.getText(), org.getText()));
			}
		} catch (DocumentException e) {
			e.printStackTrace();
			System.err.println("解析web service授权用户配置文件["+file.getName()+"]出错");
		}
		return list;
		
	}
	private static ServiceConfig analyseServiceConfig(File file){
		System.out.println("正在解析web service配置文件["+file.getName()+"]");
		ServiceConfig config = new ServiceConfig();
		try {
			SAXReader reader = new SAXReader();
			//reader.setEncoding("GBK");
			Document doc = reader.read(file);
			String tranCode = doc.selectSingleNode("/service/tranCode").getText();
			String serviceClassName = doc.selectSingleNode("/service/serviceClassName").getText();
			String serviceMethod = doc.selectSingleNode("/service/serviceMethod").getText();
			String parameterType = doc.selectSingleNode("/service/parameterType").getText();
			
			config.setTranCode(tranCode);
			config.setServiceClassName(serviceClassName);
			config.setServiceMethod(serviceMethod);
			config.setParameterType(parameterType);
			
			Element fieldsElement = (Element)doc.selectObject("/service/fields");
			List<Element> fieldList = fieldsElement.elements();
			for(Element field:fieldList){
				ServiceConfig.ServiceField sf = analyseServiceField(field);
				if(null != sf){
					config.addField(sf);
				}
				
			}
		} catch (DocumentException e) {
			e.printStackTrace();
			System.err.println("解析web service配置文件["+file.getName()+"]出错");
			return null;
		}
		return config;
	}
	
	private static ServiceConfig.ServiceField analyseServiceField(Element field) {
		Element name = field.element("name");
		Element type = field.element("type");
		Element required = field.element("required");
		Element description = field.element("description");

		Element minLength = field.element("minLength");
		Element maxLength = field.element("maxLength");
		Element min = field.element("min");
		Element max = field.element("max");
		Element dateFormat = field.element("dateFormat");
		
		ServiceConfig.ServiceField sf = new ServiceConfig.ServiceField(name.getText(), type.getText(),
				null == required?false:"true".equals(required.getText()), getText(description));
		
		sf.setMinLength(getText(minLength));
		sf.setMaxLength(getText(maxLength));
		sf.setMin(getText(min));
		sf.setMax(getText(max));
		sf.setDateFormat(getText(dateFormat));
		
		return sf;
	}
	
	private static String getText(Element element){
		if(null == element)
			return null;
		return element.getText();
	}
}
