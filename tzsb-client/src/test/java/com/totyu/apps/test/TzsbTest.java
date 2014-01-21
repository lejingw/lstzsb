package com.totyu.apps.test;

import java.io.FileWriter;
import java.util.Iterator;
import java.util.List;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import org.junit.Test;

import com.totyu.apps.ws.TzsbWsService;
import com.totyu.apps.ws.tzsb.TzsbService;

public class TzsbTest {
	@Test
	public void test02(){
		try {
			TzsbService service = new TzsbWsService().getTzsbWsServicePort();
			
			String fileName = "/Users/wanglj/workspaces/lstzsb_workspace/tzsb-client/src/test/resources/request_xml.xml"; // 当前路径下的demo.xml
			SAXReader reader = new SAXReader();
			//reader.setEncoding("GBK");
			Document doc = reader.read(fileName);
			//doc.setXMLEncoding("UTF-8");
			
			String inputXML = doc.asXML();
			
//			System.out.println("--发送数据开始");
//			System.out.println(inputXML);
//			System.out.println("--发送数据结束");
			
			String outputXML = service.tzsbTranService("test1", "select", inputXML);
			
			System.out.println("--接收数据:");
			Document responseDoc = DocumentHelper.parseText(outputXML); // 将字符串转为XML
			OutputFormat format = OutputFormat.createPrettyPrint(); // 设置美观的缩进格式，便于阅读
			XMLWriter writer = new XMLWriter(System.out, format);
			writer.write(responseDoc);
			writer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void test01() {
		try {
			String fileName = "/Users/wanglj/workspaces/tzsb_svn_workspace/tzsb_client/src/test/resources/test.xml"; // 当前路径下的demo.xml
			SAXReader reader = new SAXReader();
			Document doc = reader.read(fileName); // 加载xml文件
			List<Element> peoples = doc.selectNodes("//*[@name]"); // 选择所有具有name属性的节点(即demo.xml中的所有card节点)
			for (Iterator<Element> iter = peoples.iterator(); iter.hasNext();) {
				Element card = (Element) iter.next();
				// System.out.println(node.asXML());
				// System.out.println("---------------------------------------");
				// System.out.println(node.attributeCount());
				List< Attribute> attrList = card.attributes();
				// 输出每个card的所有属性
				for (Iterator<Attribute> attr = attrList.iterator(); attr.hasNext();) {
					Attribute a = (Attribute) attr.next();
					System.out.println(a.getName() + "=" + a.getValue());
				}
				System.out.println("----------------------------------------------------");
			}

			Element zhangsan = (Element) doc.selectSingleNode("//card[@id='2']"); // 查找“id属性”=2的card元素
			System.out.println("张三的名称：" + zhangsan.attribute("name").getValue()); // 输出zhangsan的name属性

			Node addrFamily = zhangsan.selectSingleNode("./address/item[2]"); // 选择zhangsan元素下的address节点下的第2个item子节点
			System.out.println("张三的单位地址：" + addrFamily.getStringValue()); // 输出cdata内容

			System.out.println("----------------------------------------------------");
			// 为zhangsan下增加二个节点
			zhangsan.addElement("email").addAttribute("type", "工作")
					.addText("work@some-domain.com");
			zhangsan.addElement("email").addAttribute("type", "私人")
					.addCDATA("private@some-domain.com"); // 设置CDATA内容

			System.out.println(zhangsan.asXML()); // 打印zhangsan节点的xml内容(调试用)
			System.out.println("----------------------------------------------------");

			// 将上述改动保存到文件demo2.xml
			FileWriter fileWriter = new FileWriter("/Users/wanglj/workspaces/tzsb_svn_workspace/tzsb_client/src/test/resources/test2.xml");

			OutputFormat format = OutputFormat.createPrettyPrint(); // 设置美观的缩进格式，便于阅读
//			format.setEncoding("GBK");
			// format = OutputFormat.createCompactFormat();//设置紧凑格式（消除多余空格），便于下载
			XMLWriter writer = new XMLWriter(System.out, format);
			doc.setXMLEncoding("UTF-8"); 
			writer.setWriter(fileWriter);
			writer.write(doc);
			writer.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
