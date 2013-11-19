package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lejingw.apps.web.LoginUserFilter;
import com.lejingw.apps.ws2.Hello2WsService;
import com.lejingw.apps.ws2.Pager;
import com.lejingw.apps.ws31.Hello3WsException_Exception;
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

	@RequestMapping(value="/add2", method=RequestMethod.GET)
	public String add2(Model model, HttpSession session){
		System.out.println("========setAttribute");
		session.setAttribute(LoginUserFilter.LOGIN_USER_NAME, "admin123_111111");
		model.addAttribute("str", "hello");
		return "success";
	}
	@RequestMapping(value="/add2", method=RequestMethod.POST)
	public String add2Do(Model model){
		String str;
		try {
			str = hello3WsService.sayHello("world");
			System.out.println(str);
		} catch (Hello3WsException_Exception e) {
			str = e.getMessage();
		} catch(Exception e){
			System.out.println(e);
			str = e.getMessage();
		}
//		com.lejingw.apps.ws31.Pager pager = new com.lejingw.apps.ws31.Pager();
//		pager.setStart(13);
//		pager.setLimit(33333);
//		System.out.println(hello3WsService.getPagerStr(pager));
//		
//		System.out.println(hello3WsService.getPagerList(11, 17));
		model.addAttribute("str", str);
		return "success";
	}
}
