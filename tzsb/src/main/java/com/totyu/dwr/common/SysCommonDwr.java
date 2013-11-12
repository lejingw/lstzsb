package com.totyu.dwr.common;

import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.totyu.service.common.SysCommonService;
import com.totyu.web.cache.ParameterCache;

@Controller
@RemoteProxy(name="SysCommonDwr")
public class SysCommonDwr {
	@Autowired
	private SysCommonService sysCommonService;
	
	/**
	 * 获取系统参数配置值
	 * @param name
	 * @return
	 */
	public String getParameterValue(String name){
		return ParameterCache.getInstance().getValue(name);
	}

}