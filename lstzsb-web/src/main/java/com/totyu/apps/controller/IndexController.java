package com.totyu.apps.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.totyu.apps.model.edu.stu.User;

@Controller
public class IndexController {

	@RequestMapping("/index")
	public String index(Model model) {
		model.addAttribute("username", "张三");
		return "index";
	}

	@RequestMapping(value = "/index2", method=RequestMethod.POST)
	public String index2(@RequestParam(value="username") String username, @RequestParam String password, Model model, HttpServletRequest request) {
		System.out.println(username);
		System.out.println(password);
		model.addAttribute("username", username);
		return "index";
	}
	
	@RequestMapping(value = "/index3", method=RequestMethod.POST)
	public String index3(User user, Model model, HttpServletRequest request) {
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		model.addAttribute("username", request.getParameter("username"));
		return "forward:/edu/stu/list.do";
	}
}
