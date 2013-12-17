package com.totyu.controller.menhu.sys;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.common.CommonUtil;
import com.totyu.service.menhu.sys.MenhuSysService;

@Controller
public class MenhuSysController {
	@Autowired
	public MenhuSysService loginService;
	
	@RequestMapping("/login")
	public String login(HttpSession session) throws Exception {
		if(CommonUtil.isLogined(session)){
			String type = CommonUtil.getSessionLoginType(session);
			return getSubSystemIndexUrl(type);
		}
		return "menhu/sys/index";
	}
	
	private String getSubSystemIndexUrl(String type) {
		if("0".equals(type)){//企业登录
			return "redirect:/qiye/sys/index.do";
		}else if("1".equals(type)){//监察登录
			return "redirect:/qiye/sys/index.do";
		}else if("2".equals(type)){//乡镇部门登录
			return "redirect:/qiye/sys/index.do";
		}else if("3".equals(type)){//行业主管部门登录
			return "redirect:/qiye/sys/index.do";
		}else {
			return "menhu/sys/index";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		CommonUtil.logoutClearSession(session);
		return "redirect:/index.do";
	}
	
	@RequestMapping("/index")
	public String index(Model model, HttpSession session) {
		if (CommonUtil.isLogined(session)) {
			String type = CommonUtil.getSessionLoginType(session);
			return getSubSystemIndexUrl(type);
		}
		// 文章列表取得
		model.addAttribute("tztgList", null);
		model.addAttribute("hyxxList", null);
		model.addAttribute("jsgfList", null);
		model.addAttribute("zlxzList", null);
		// 最新回答问题取得
		model.addAttribute("wtList", null);
		return "menhu/sys/index";
	}

}
