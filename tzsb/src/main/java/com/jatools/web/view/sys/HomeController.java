package com.jatools.web.view.sys;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.jatools.common.CommonUtil;
import com.jatools.web.form.sys.HomeForm;
import com.jatools.web.form.sys.LoginForm;

@Controller
public class HomeController {
	private static Logger logger = Logger.getLogger(HomeController.class.getName());

	@RequestMapping("/home")
	public String doPerform(HttpServletRequest req, Model model, HttpServletResponse res) {
		
		if (!CommonUtil.isLogined(req)) {
			LoginForm loginForm = new LoginForm();
			loginForm.setSuccessfulFlag(false);
			loginForm.setMessage("您还没有登陆，请先登录！");
			model.addAttribute("homeForm", loginForm);
			return "redirect:/login/false.do";
		}
		HttpSession session = req.getSession();
		HomeForm homeForm = new HomeForm();
		homeForm.setUserid(CommonUtil.getSessionUserId(session));
		homeForm.setUsername(CommonUtil.getSessionUserName(session));
		model.addAttribute("homeForm", homeForm);
		return "home";
	}
}
