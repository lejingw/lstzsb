package com.totyu.apps.controller;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.SAXReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.totyu.apps.ws.WsException;
import com.totyu.apps.ws.hello3.Hello3Service;
//import com.totyu.apps.ws.hello4.Hello4Service;
import com.totyu.apps.ws.tzsb.TzsbService;
import com.totyu.apps.ws.vo.Pager;



@Controller
public class TzsbController {
	@Autowired
	private Hello3Service hello3Service;
//	@Autowired
//	private Hello4Service hello4WsService;
	@Autowired
	private TzsbService tzsbService;
//	@Autowired
//	private ZhongheService zhongheService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index(Model model){
		return "index";
	}
	
	@RequestMapping(value="/test1", method=RequestMethod.GET)
	public String test1(Model model){
		String str = null;
		try {
			str = hello3Service.sayHello("world1");
			System.out.println(str);
			Pager pager = hello3Service.getPager(2, 10);
			System.out.println(pager.getStart()+":"+pager.getLimit());
			System.out.println(hello3Service.getPagerStr(pager));
		} catch (WsException e) {
			str = e.getMessage();
		} catch(Exception e){
			System.out.println("==exception:"+e);
			str = e.getMessage();
		}
		model.addAttribute("str", str);
		return "success";
	}
	
	@RequestMapping(value="/test2", method=RequestMethod.GET)
	public String test2(Model model){
		String str = null;
		try {
			String fileName = "/Users/wanglj/workspaces/lstzsb_workspace/tzsb-client/src/test/resources/request_xml.xml"; // 当前路径下的demo.xml
			SAXReader reader = new SAXReader();
			Document doc = reader.read(fileName);
		
			String inputXML = doc.asXML();
			str = tzsbService.tzsbTranService("test1", "select", inputXML);
		} catch (WsException e) {
			str = e.getMessage();
		} catch (DocumentException e) {
			str = e.getMessage();
		}
		model.addAttribute("str", str);
		return "success";
	}
	
	@RequestMapping(value="/test3", method=RequestMethod.GET)
	public String test3(Model model){
		return "success";
	}
	
	@RequestMapping(value="/test4", method=RequestMethod.GET)
	public String test4(Model model){
		return "success";
	}
}
