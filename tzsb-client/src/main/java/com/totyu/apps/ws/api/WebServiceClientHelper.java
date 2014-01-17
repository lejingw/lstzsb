package com.totyu.apps.ws.api;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class WebServiceClientHelper {
	private static boolean initFlag = false;
	private static final Map<String, ServiceClientConfig> webServiceConfMap = new HashMap<String, ServiceClientConfig>();

	public static void init() {
		if (initFlag)
			return;
		String path = WebServiceClientHelper.class.getResource(
				"/conf/webservice/client/").getPath();
		File dir = new File(path);
		for (File file : dir.listFiles()) {
			if (file.isFile()) {
				ServiceClientConfig conf = analyseServiceConfig(file);
				if (null != conf) {
					webServiceConfMap.put(conf.getTranCode(), conf);
				}
			}
		}
		initFlag = true;
	}

	public static ServiceClientConfig getServiceClientConfig(String tranCode) {
		if (!initFlag) {
			throw new ServiceConfigException("WebServiceHelper have not init.");
		}
		return webServiceConfMap.get(tranCode);
	}

	private static ServiceClientConfig analyseServiceConfig(File file) {
		System.out.println("正在解析web service[客户端]配置文件[" + file.getName() + "]");
		ServiceClientConfig config = new ServiceClientConfig();
		try {
			SAXReader reader = new SAXReader();
			// reader.setEncoding("GBK");
			Document doc = reader.read(file);
			String tranCode = doc.selectSingleNode("/client/tranCode").getText();
			String tranType = doc.selectSingleNode("/client/tranType").getText();
			String operType = doc.selectSingleNode("/client/operType").getText();
			String inputClassName = doc.selectSingleNode("/client/inputClassName").getText();
			String outputClassName = doc.selectSingleNode("/client/outputClassName").getText();

			config.setTranCode(tranCode);
			config.setTranType(tranType);
			config.setOperType(operType);
			config.setInputClassName(inputClassName);
			config.setOutputClassName(outputClassName);

			Element inputFields = (Element) doc
					.selectObject("/client/inputFields");
			List<Element> inputFieldList = inputFields.elements();
			for (Element field : inputFieldList) {
				ServiceClientConfig.ServiceClientField sf = analyseServiceClientField(field);
				if (null != sf) {
					config.addInputField(sf);
				}
			}
			Element outputFields = (Element) doc
					.selectObject("/client/outputFields");
			List<Element> outputFieldList = outputFields.elements();
			for (Element field : outputFieldList) {
				ServiceClientConfig.ServiceClientField sf = analyseServiceClientField(field);
				if (null != sf) {
					config.addOutputField(sf);
				}
			}
		} catch (DocumentException e) {
			e.printStackTrace();
			System.err.println("解析web service配置文件[" + file.getName() + "出错:" + e.getMessage());
			return null;
		}
		return config;
	}

	private static ServiceClientConfig.ServiceClientField analyseServiceClientField(Element field) {
		Element localName = field.element("localName");
		Element remoteName = field.element("remoteName");
		Element description = field.element("description");

		ServiceClientConfig.ServiceClientField sf = new ServiceClientConfig.ServiceClientField(
				getText(localName), getText(remoteName), getText(description));

		return sf;
	}

	private static String getText(Element element) {
		if (null == element)
			return null;
		return element.getText();
	}
}
