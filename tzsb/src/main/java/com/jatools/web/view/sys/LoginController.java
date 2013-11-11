package com.jatools.web.view.sys;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.jatools.common.CommonUtil;
import com.jatools.common.CookieUtil;
import com.jatools.common.Global;
import com.jatools.manager.sys.UserManager;
import com.jatools.vo.sys.User;
import com.jatools.web.form.sys.LoginForm;
import com.jatools.web.util.StringUtil;

@Controller
public class LoginController {
	private static Logger logger = Logger.getLogger(LoginController.class);

	@Autowired
	public UserManager userManager;
	
	@RequestMapping("/login/false")
	public ModelAndView doPerform(HttpServletRequest req, HttpServletResponse res) {
		LoginForm loginForm = new LoginForm();
		loginForm.setSuccessfulFlag(false);
		loginForm.setMessage("对不起，您还未登录，请先登录!");

		// 从Cookie 中获取账户
		Cookie cookieUserName = CookieUtil.getCookieByName(req, Global.COOKIE_USER_NAME);
		Cookie cookiePassword = CookieUtil.getCookieByName(req, Global.COOKIE_USER_PASSWORD);
		if (cookieUserName != null) {
			loginForm.setUsername(cookieUserName.getValue());
			if(null != cookiePassword){
				loginForm.setPassword(cookiePassword.getValue());
			}
			logger.debug("从cookie中获取用户名,为：" + cookieUserName.getValue());
		}
		return new ModelAndView("login", "loginForm", loginForm);
	}
	@RequestMapping("/login/doLogin")
	public ModelAndView doLogin(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String username	= req.getParameter("username");
		String password	= req.getParameter("password");
		String orgid		= req.getParameter("orgid");
		{
			// 表明需要保存个人基本信息
			logger.debug("客户选择将登录信息存入cookie中");
			CookieUtil.addCookie(res, Global.COOKIE_USER_NAME, username, Global.COOKIE_MAX_AGE);
			CookieUtil.addCookie(res, Global.COOKIE_USER_PASSWORD, password, Global.COOKIE_MAX_AGE);
		}
		LoginForm loginForm = new LoginForm();
		loginForm.setUsername(username);
		loginForm.setPassword(password);
		if (StringUtil.isBlank(username) || StringUtil.isBlank(password)) {// 输入验证
			loginForm.setSuccessfulFlag(false);
			loginForm.setMessage("输入登陆参数不完整！");
			return new ModelAndView("login", "loginForm", loginForm);
		}
		loginForm.setUserip(getIpAddr(req));

		User user = userManager.getUserInfo(loginForm.getUsername());
		if (null == user) {
			logger.error("无法根据用户名[" + loginForm.getUsername() + "]，获取登录用户信息");
			loginForm.setSuccessfulFlag(false);
			loginForm.setMessage("无法获取登录用户[" + loginForm.getUsername() + "]信息");
			return new ModelAndView("login", "loginForm", loginForm);
		}
		loginForm.setSuccessfulFlag(true);
		
		CommonUtil.addSessionToken(req.getSession(), user.getUserid(), user.getUsername(), orgid);
		
		return new ModelAndView(new RedirectView(Global.CONTEXT + "/home.do"));
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		if(null != session){
			logger.debug("成功登出系统");
			CommonUtil.logoutClearSession(session);
			session.invalidate();
		}
		return "/login/false.do";
	}
	/**
	 * 获取远程机器IP
	 * 
	 * @param request
	 * @return
	 */
	public String getIpAddr(HttpServletRequest request) {
		if (request == null) {
			logger.debug("获取远程机器IP，request对象为null.");
			return "";
		}
		String ip = request.getHeader("x-forwarded-for");
		logger.debug("x-forwarded-for:" + ip);
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
			logger.debug("Proxy-Client-IP:" + ip);
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
			logger.debug("WL-Proxy-Client-IP:" + ip);
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
			logger.debug("RemoteAddr:" + ip);
		}
		return ip;
	}
}