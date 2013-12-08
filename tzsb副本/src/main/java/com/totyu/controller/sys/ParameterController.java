package com.totyu.controller.sys;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.totyu.common.CommonUtil;
import com.totyu.common.Pager;
import com.totyu.service.sys.ParameterService;
import com.totyu.vo.sys.Parameter;

@Controller
@RequestMapping("/sys/parameter")
public class ParameterController {
	private Logger logger = Logger.getLogger(ParameterController.class);
	
	@Autowired
	private ParameterService parameterService;
	
	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest req, HttpServletResponse res) {
		try {
			Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req, "name");
			Pager pager = parameterService.getParameterData(condition);
			model.addAttribute("pager", pager);
		} catch (Exception e) {
			logger.error(e);
			model.addAttribute("successfulFlag", false);
			model.addAttribute("message", "获取列表数据出错");
		}
		return "sys/parameter_list";
	}

	/**
	 * 页面跳转
	 * @param req
	 * @param res
	 * @return
	 */
	@RequestMapping("/toEdit")
	public String toEdit(Model model, HttpServletRequest req, HttpServletResponse res) {
		String name = CommonUtil.getParameterNull(req, "name");
		model.addAttribute("name", name);
		if(null != name){
			Parameter param =  this.parameterService.getParameter(name);
			model.addAttribute("parameter", param);
		}
		return "sys/parameter_edit";
	}
	
}
