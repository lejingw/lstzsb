package com.totyu.controller.sys;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.common.CommonUtil;
import com.totyu.common.CookieUtil;
import com.totyu.common.Global;
import com.totyu.service.sys.UserService;
import com.totyu.vo.sys.User;
import com.totyu.web.util.StringUtil;

@Controller
public class LoginController {
	private static Logger logger = Logger.getLogger(LoginController.class);

	@Autowired
	public UserService userService;
	
	@RequestMapping("/login/false")
	public String doPerform(Model model, HttpServletRequest req, HttpServletResponse res) {
		model.addAttribute("successfulFlag", false);
		model.addAttribute("message", "您还未登录，请先登录!");

		// 从Cookie 中获取账户
		Cookie cookieUserName = CookieUtil.getCookieByName(req, Global.COOKIE_USER_NAME);
		Cookie cookiePassword = CookieUtil.getCookieByName(req, Global.COOKIE_USER_PASSWORD);
		if (cookieUserName != null) {
			model.addAttribute("username", cookieUserName.getValue());
			if(null != cookiePassword){
				model.addAttribute("password", cookiePassword.getValue());
			}
			logger.debug("从cookie中获取用户名,为：" + cookieUserName.getValue());
		}
		return "login";
	}
	
	@RequestMapping("/login/doLogin")
	public String doLogin(Model model, HttpServletRequest req, HttpServletResponse res) throws Exception {
		String username	= req.getParameter("username");
		String password	= req.getParameter("password");
		String orgid		= req.getParameter("orgid");
		{
			// 表明需要保存个人基本信息
			logger.debug("客户选择将登录信息存入cookie中");
			CookieUtil.addCookie(res, Global.COOKIE_USER_NAME, username, Global.COOKIE_MAX_AGE);
			CookieUtil.addCookie(res, Global.COOKIE_USER_PASSWORD, password, Global.COOKIE_MAX_AGE);
		}
		model.addAttribute("username", username);
		model.addAttribute("password", password);
		if (StringUtil.isBlank(username) || StringUtil.isBlank(password)) {// 输入验证
			model.addAttribute("successfulFlag", false);
			model.addAttribute("message", "输入登陆参数不完整！");
			return "login";
		}
		model.addAttribute("userip", getIpAddr(req));

		User user = userService.getUserInfo(username);
		if (null == user) {
			logger.error("无法根据用户名[" + username + "]，获取登录用户信息");
			model.addAttribute("successfulFlag", false);
			model.addAttribute("message", "无法获取登录用户[" + username + "]信息");
			return "login";
		}
		model.addAttribute("successfulFlag", true);
		
		CommonUtil.addSessionToken(req.getSession(), user.getUserid(), user.getUsername(), orgid);
		
		return "home";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		if(null != session){
			logger.debug("成功登出系统");
			CommonUtil.logoutClearSession(session);
			session.invalidate();
		}
		return "login";
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