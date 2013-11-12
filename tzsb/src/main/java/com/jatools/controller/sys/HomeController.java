package com.jatools.controller.sys;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jatools.common.CommonUtil;

@Controller
public class HomeController {
	@RequestMapping("/home")
	public String doPerform(Model model, HttpServletRequest req, HttpServletResponse res) {
		if (!CommonUtil.isLogined(req)) {
			model.addAttribute("successfulFlag", false);
			model.addAttribute("message", "您还未登录，请先登录!");
			return "login";
		}
		HttpSession session = req.getSession();
		model.addAttribute("userid", CommonUtil.getSessionUserId(session));
		model.addAttribute("username", CommonUtil.getSessionUserName(session));
		return "home";
	}
}
