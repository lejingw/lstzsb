package com.totyu.controller.qiye.sys;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.common.CommonUtil;

@Controller
@RequestMapping("/qiye/sys")
public class QiyeSysController {
	@RequestMapping("/index")
	public String index(HttpServletRequest req) {
		if (CommonUtil.isLogined(req)) {
//			String userid = CommonUtil.getSessionUserId(req);
//			String loginType = CommonUtil.getSessionLoginType(req);
//			String orgid = CommonUtil.getSessionOrgId(req);
			return "qiye/sys/index";
		}
		return "redirect:/index.do";
	}
	@RequestMapping("/main")
	public String main(Model model, HttpServletRequest req, HttpServletResponse res) {
		return "qiye/sys/main";
	}
}
