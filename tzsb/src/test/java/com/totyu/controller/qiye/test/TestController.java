package com.totyu.controller.qiye.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.service.qiye.jbxx.ScxkzglService;

@Controller
@RequestMapping("/qiye/test/test")
public class TestController {
	@Autowired
	private ScxkzglService scxkzglService;

	@RequestMapping("/list")
	public String list() {
		return "qiye/test/test_list";
	}
}
