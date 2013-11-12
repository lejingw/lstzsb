package com.jatools.dwr.sys;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.jatools.common.CommonUtil;
import com.jatools.service.sys.ParameterService;
import com.jatools.vo.sys.Parameter;

@Controller
@RemoteProxy(name="ParameterDwr")
public class ParameterDwr {

	private static Logger logger = Logger.getLogger(ParameterDwr.class);

	@Autowired
	private ParameterService parameterService;
	
	@RemoteMethod
	public String updateParameter(Parameter parameter, HttpServletRequest req) {
		try{
			this.parameterService.updateParameter(parameter, CommonUtil.getSessionUserId(req));
			return null;
		} catch (Exception e) {
			logger.error(e);
			return "保存出错";
		}
	}
}
