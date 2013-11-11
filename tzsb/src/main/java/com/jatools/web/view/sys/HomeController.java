package com.jatools.web.view.sys;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.jatools.common.CommonUtil;
import com.jatools.common.Global;
import com.jatools.web.form.sys.HomeForm;
import com.jatools.web.form.sys.LoginForm;

@Controller
public class HomeController {
	private static Logger logger = Logger.getLogger(HomeController.class.getName());

	@RequestMapping("/home")
	public ModelAndView doPerform(HttpServletRequest req, HttpServletResponse res) {
		
		if (!CommonUtil.isLogined(req)) {
			return getNoLoginViewPage();
		}
		HttpSession session = req.getSession();
		HomeForm homeForm = new HomeForm();
		homeForm.setUserid(CommonUtil.getSessionUserId(session));
		homeForm.setUsername(CommonUtil.getSessionUserName(session));
		return new ModelAndView("home","homeForm",homeForm);
	}

	/**
	 * 如果没有登陆转向登陆界面
	 * 
	 * @return
	 */
	public ModelAndView getNoLoginViewPage() {
		LoginForm loginForm = new LoginForm();
		loginForm.setSuccessfulFlag(false);
		loginForm.setMessage("您还没有登陆，请先登录！");
		return new ModelAndView(new RedirectView(Global.CONTEXT + "/login/false.do"), "loginForm", loginForm);
	}
}
