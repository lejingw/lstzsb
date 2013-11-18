package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lejingw.apps.ws2.Hello2WsService;
import com.lejingw.apps.ws2.Pager;
import com.lejingw.apps.ws31.IHello3WsService;


@Controller
public class TzsbController {
	@Autowired
	private Hello2WsService hello2WsService;
	@Autowired
	private IHello3WsService hello3WsService;
	
	@RequestMapping("/add")
	public String add(Model model){
		String str = hello2WsService.sayHello("world");
		System.out.println(str);
		Pager pager = hello2WsService.getPager(2, 10);
		System.out.println(pager.getStart()+":"+pager.getLimit());
		System.out.println(hello2WsService.getPagerList(pager));
		model.addAttribute("str", str);
		return "success";
	}
	
	@RequestMapping("/add2")
	public String add2(Model model){
		String str = hello3WsService.sayHello("world");
		System.out.println(str);
		com.lejingw.apps.ws31.Pager pager = new com.lejingw.apps.ws31.Pager();
		pager.setStart(13);
		pager.setLimit(33333);
		System.out.println(hello3WsService.getPagerStr(pager));
		
		System.out.println(hello3WsService.getPagerList(11, 17));
		model.addAttribute("str", str);
		return "success";
	}
}
