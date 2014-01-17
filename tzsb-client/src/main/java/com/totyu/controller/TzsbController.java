package com.totyu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.totyu.apps.ws.WsException;
import com.totyu.apps.ws.hello3.Hello3Service;
import com.totyu.apps.ws.tzsb.TzsbWebService;
import com.totyu.common.Pager;



@Controller
public class TzsbController {
	@Autowired
	private Hello3Service hello3Service;
	@Autowired
	private TzsbWebService tzsbWebService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index(Model model){
		return "index";
	}
	@RequestMapping(value="/test1", method=RequestMethod.GET)
	public String test1(Model model){
		return "success";
	}
	@RequestMapping(value="/test2", method=RequestMethod.GET)
	public String test2(Model model){
		return "success";
	}
	@RequestMapping(value="/test3", method=RequestMethod.GET)
	public String test3(Model model){
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
	@RequestMapping(value="/test4", method=RequestMethod.GET)
	public String test4(Model model){

		String str = null;
		try {
			str = tzsbWebService.tzsbTranService("world", null, "world");
		} catch (WsException e) {
			str = e.getMessage();
		}
		model.addAttribute("str", str);
		return "success";
	}
	
//	@RequestMapping(value="/test3", method=RequestMethod.GET)
//	public String add2Do(Model model){
//		String str;
//		try {
//			str = hello2Service.sayHello("world");
//			System.out.println(str);
//		} catch (Hello3WsException_Exception e) {
//			str = e.getMessage();
//		} catch(Exception e){
//			System.out.println(e);
//			str = e.getMessage();
//		}
////		com.lejingw.apps.ws31.Pager pager = new com.lejingw.apps.ws31.Pager();
////		pager.setStart(13);
////		pager.setLimit(33333);
////		System.out.println(hello3WsService.getPagerStr(pager));
////		
////		System.out.println(hello3WsService.getPagerList(11, 17));
//		model.addAttribute("str", str);
//		return "success";
//	}
}
