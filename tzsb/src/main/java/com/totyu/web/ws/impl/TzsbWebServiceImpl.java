package com.totyu.web.ws.impl;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.jws.WebService;

import org.apache.commons.lang.StringUtils;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.Node;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;

import com.totyu.common.Global;
import com.totyu.common.PropertyUtil;
import com.totyu.service.common.SysCommonService;
import com.totyu.web.ws.TzsbWebService;
import com.totyu.web.ws.api.ServiceAuth;
import com.totyu.web.ws.api.ServiceConfig;
import com.totyu.web.ws.api.ServiceConfig.ServiceField;
import com.totyu.web.ws.api.ServiceConfigException;
import com.totyu.web.ws.api.WebServiceClientHelper;
import com.totyu.web.ws.api.WebServiceHelper;
import com.totyu.web.ws.api.WsException;

@WebService(endpointInterface = "com.totyu.web.ws.TzsbWebService", name = "TzsbWsService", portName = "TzsbWsServicePort", serviceName = "TzsbWsService", targetNamespace = "http://ws.web.totyu.com", wsdlLocation = "/WEB-INF/wsdl/tzsbWsService.wsdl")
public class TzsbWebServiceImpl implements TzsbWebService, InitializingBean {
	private boolean logEnabled = false;
	private final String WEB_SERVICE_DEAL_SUCCESS = "1";
	private final String WEB_SERVICE_DEAL_FAILURE = "0";
	private Pattern numberPattern = Pattern.compile("^-?\\d+$");
	private Pattern floatPattern = Pattern.compile("^-?\\d+\\.?\\d*$");
	private Pattern dateTimePattern =	Pattern.compile("^[0-9]{4}-[0-9]{2}-[0-9]{2}\\s[0-9]{2}\\:[0-9]{2}\\:[0-9]{2}$");
	private ThreadLocal<String> requestLogId = new ThreadLocal<String>();

	@Autowired
	private SysCommonService sysCommonService;

	public void setLogEnabled(boolean logEnabled) {
		this.logEnabled = logEnabled;
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		WebServiceHelper.init();
		WebServiceClientHelper.init();
	}
	
	public String tzsbTranService(String businessCode, String operationCode, String inputXML) throws WsException {
		//保存接收数据
		if(logEnabled){
			String reqId = sysCommonService.writeWebServiceLog(true, null, inputXML);
			requestLogId.set(reqId);
		}
		try {
			Document requestDoc = DocumentHelper.parseText(inputXML); // 将字符串转为XML
			//授权验证
            authValidation(requestDoc);
			
    		String tranCode = requestDoc.selectSingleNode("/tran/message/tranCode").getText();
    		ServiceConfig serviceConfig = WebServiceHelper.getServiceConfig(tranCode);
    		Object parameter = Class.forName(serviceConfig.getParameterType()).newInstance();
    		
    		StringBuffer errorMsgBuff = new StringBuffer("检验输入数据出错：");
    		if(hasCheckError(requestDoc, serviceConfig, parameter, errorMsgBuff)){
    			return createFailResponse(errorMsgBuff.toString());
    		}
    		
    		Object service = Global.springContext.getBean(Class.forName(serviceConfig.getServiceClassName()));
    		Method method = service.getClass().getMethod(serviceConfig.getServiceMethod(), Class.forName(serviceConfig.getParameterType()));
    		Object result = method.invoke(service, parameter);
    		
    		System.out.println(result);
    		return creatResponse(result);
		} catch (Exception e) {
			return createFailResponse(e.getMessage());
		}
	}
	
	/**
	 * 检查传入字段类型
	 */
	private boolean hasCheckError(Document requestDoc, ServiceConfig serviceConfig, Object parameter, StringBuffer errorMsgBuff) throws Exception{
		boolean dataErrorFlag = false;
		Map<String, ServiceField> fieldMap = serviceConfig.getFieldMap();
		
		for(String fieldName:fieldMap.keySet()){
			ServiceField field = fieldMap.get(fieldName);
			Node node = requestDoc.selectSingleNode("/tran/data/" + fieldName);
			//System.out.println(fieldName + ":"+node.getText());
			if(null == node || StringUtils.isEmpty(node.getText())){
				if(field.getRequired()){
					dataErrorFlag = true;
					errorMsgBuff.append("字段[" + fieldName + "]不能为空,");
				}
				continue;
			}
			
			boolean passFieldCheckFlag = true;
			String val = node.getText();
			if("string".equals(field.getType())){
				if(null != field.getMinLength() && val.length()<Integer.parseInt(field.getMinLength())){
					dataErrorFlag = true;
					passFieldCheckFlag = false;
					errorMsgBuff.append("字段[" + fieldName + ":" + val + "]长度不能小于" + field.getMinLength()+",");
				}
				if(null != field.getMaxLength() && val.length()>Integer.parseInt(field.getMaxLength())){
					dataErrorFlag = true;
					passFieldCheckFlag = false;
					errorMsgBuff.append("字段[" + fieldName + ":" + val + "]长度不能大于" + field.getMaxLength()+",");
				}
			}else if("int".equals(field.getType())){
				if(!numberPattern.matcher(val).matches()){
					dataErrorFlag = true;
					passFieldCheckFlag = false;
					errorMsgBuff.append("字段[" + fieldName + ":" + val + "]必须为数字类型,");
				}
				if(null != field.getMin() && Integer.parseInt(val)<Integer.parseInt(field.getMin())){
					dataErrorFlag = true;
					passFieldCheckFlag = false;
					errorMsgBuff.append("字段[" + fieldName + ":" + val + "]不能小于" + field.getMin()+",");
				}
				if(null != field.getMax() && Integer.parseInt(val)>Integer.parseInt(field.getMax())){
					dataErrorFlag = true;
					passFieldCheckFlag = false;
					errorMsgBuff.append("字段[" + fieldName + ":" + val + "]不能大于" + field.getMax()+",");
				}
			}else if("float".equals(field.getType())){
				if(!floatPattern.matcher(val).matches()){
					dataErrorFlag = true;
					passFieldCheckFlag = false;
					errorMsgBuff.append("字段[" + fieldName + ":" + val + "]必须为小数类型,");
				}
				if(null != field.getMin() && Double.parseDouble(val)<Double.parseDouble(field.getMin())){
					dataErrorFlag = true;
					passFieldCheckFlag = false;
					errorMsgBuff.append("字段[" + fieldName + ":" + val + "]不能小于" + field.getMin()+",");
				}
				if(null != field.getMax() && Double.parseDouble(val)>Double.parseDouble(field.getMax())){
					dataErrorFlag = true;
					passFieldCheckFlag = false;
					errorMsgBuff.append("字段[" + fieldName + ":" + val + "]不能大于" + field.getMax()+",");
				}
			}else if("date".equals(field.getType())){
				String dateFormate = field.getDateFormat();
				if(null == dateFormate){
					if(!dateTimePattern.matcher(val).matches()){
						dataErrorFlag = true;
    					passFieldCheckFlag = false;
						errorMsgBuff.append("字段[" + fieldName + ":" + val + "]必须为日期类型,");
					}else{
						dateFormate = "yyyy-MM-dd HH:mm:ss";
					}
				}
				if(passFieldCheckFlag){
					try {
						SimpleDateFormat sdf = new SimpleDateFormat(dateFormate);
						Date date = sdf.parse(val);
						PropertyUtil.setProperty(parameter, node.getName(), date);
						passFieldCheckFlag = false;
					} catch (Exception e) {
						dataErrorFlag = true;
						passFieldCheckFlag = false;
						errorMsgBuff.append("字段[" + fieldName + ":" + val + "]日期类型不匹配格式[" + dateFormate + "],");
					}
				}
			}
			if(passFieldCheckFlag){
				PropertyUtil.setProperty(parameter, node.getName(), val);
			}
		}
		return dataErrorFlag;
	}
	
	private String createFailResponse(String errorInfo){
		Document document = DocumentHelper.createDocument();
        Element tran = document.addElement("tran");
        Element message = tran.addElement("message");
        message.addElement("successFlag").setText(WEB_SERVICE_DEAL_FAILURE);
        message.addElement("result").setText(errorInfo);
        String result = document.asXML();
		if(logEnabled){
	        String reqId = requestLogId.get();
			sysCommonService.writeWebServiceLog(true, reqId, result);
		}
        return result;
	}
	
	private String creatResponse(Object obj){
		Document document = DocumentHelper.createDocument();
        Element tran = document.addElement("tran");
        Element message = tran.addElement("message");
        message.addElement("successFlag").setText(WEB_SERVICE_DEAL_SUCCESS);
        Element resultElement = message.addElement("result");
        if(null != obj){
//	        if(obj instanceof String || obj instanceof Integer || obj instanceof Double){
        	if(obj.getClass().isPrimitive()){
	        	resultElement.setText(obj.toString());
	        }else{
		        List<Object> list = null;
		        if(obj instanceof List){
		        	list = (List)obj;
		        }else{
		        	list = new ArrayList<Object>();
		        	list.add(obj);
		        }
		        if(list.size()>0){
		        	try{
			            Element data = tran.addElement("data");
			            for(Object item:list){
			            	if(null == item)	continue;
			            	Element row = data.addElement("row");
			            	Field[] fields = item.getClass().getDeclaredFields();
			            	for(Field field:fields){
			            		Element propertyElement = row.addElement(field.getName());
			            		String val = PropertyUtil.getProperty(item, field.getName());
			            		if(null != val){
			            			propertyElement.setText(val);
			            		}
			            	}
			            }
		        	}catch(Exception e){
		    			throw new ServiceConfigException("内部错误");
		        	}
		        }
	        }
        }
        String result = document.asXML();
		if(logEnabled){
	        String reqId = requestLogId.get();
			sysCommonService.writeWebServiceLog(true, reqId, result);
		}
        return result;
	}
	

	private void authValidation(Document doc) throws ServiceConfigException {
		String authName = null;
		String authPassword = null;
		String authOrg = null;
		try {
			authName = doc.selectSingleNode("/tran/message/authName").getText();
			authPassword = doc.selectSingleNode("/tran/message/authPassword").getText();
			authOrg = doc.selectSingleNode("/tran/message/authOrg").getText();
		} catch (Exception e) {
			throw new ServiceConfigException("获取认证信息出错");
		}
		
		ServiceAuth auth = WebServiceHelper.getServiceAuth(authName);
		if (null == auth || !auth.getOrg().equals(authOrg) || !auth.getPassword().equals(authPassword)) {
			throw new ServiceConfigException("认证失败");
		}
	}
}
