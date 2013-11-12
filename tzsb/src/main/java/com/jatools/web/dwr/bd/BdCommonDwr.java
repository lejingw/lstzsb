package com.jatools.web.dwr.bd;

import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.jatools.manager.common.SysCommonManager;
import com.jatools.web.cache.ParameterCache;

@Controller
@RemoteProxy(name="BdCommonDwr")
public class BdCommonDwr {
	@Autowired
	private SysCommonManager sysCommonManager;
	
	/**
	 * 获取系统参数配置值
	 * @param name
	 * @return
	 */
	public String getParameterValue(String name){
		return ParameterCache.getInstance().getValue(name);
	}

}