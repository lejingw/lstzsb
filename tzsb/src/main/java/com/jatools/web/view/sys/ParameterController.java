package com.jatools.web.view.sys;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jatools.common.CommonUtil;
import com.jatools.common.Pager;
import com.jatools.manager.sys.ParameterManager;
import com.jatools.vo.sys.Parameter;
import com.jatools.web.form.BaseForm;
import com.jatools.web.form.sys.ParameterForm;

@Controller
@RequestMapping("/sys/parameter")
public class ParameterController {
	private Logger logger = Logger.getLogger(ParameterController.class);
	
	private static final String LIST_VM = "sys/parameter_list";
	private static final String EDIT_VM = "sys/parameter_edit";
	
	private static final String PARAMS[] = {"name"};
	private ParameterManager parameterManager;
	
	public void setParameterManager(ParameterManager parameterManager) {
		this.parameterManager = parameterManager;
	}
	
	public ModelAndView doPerform(HttpServletRequest req, HttpServletResponse res) {
		BaseForm form = new BaseForm();
		try {
			Map<String, String> condition = CommonUtil.getConditionForPageSession(this, req, PARAMS);
			Pager pager = parameterManager.getParameterData(condition);
			form.setPager(pager);
			form.setCondition(condition);
		} catch (Exception e) {
			logger.error(e);
			form.setSuccessfulFlag(false);
			form.setMessage("获取列表数据出错");
		}
		return new ModelAndView(LIST_VM, "form", form);
	}

	/**
	 * 页面跳转
	 * @param req
	 * @param res
	 * @return
	 */
	public ModelAndView toEdit(HttpServletRequest req, HttpServletResponse res) {
		String name = CommonUtil.getParameterNull(req, "name");
		ParameterForm form = new ParameterForm();
		
		if(null != name){
			Parameter param =  this.parameterManager.getParameter(name);
			form.setParameter(param);
			return new ModelAndView(EDIT_VM,"form",form);
		}else{
			return new ModelAndView(EDIT_VM,"form",form);
		}
	}
	
}
