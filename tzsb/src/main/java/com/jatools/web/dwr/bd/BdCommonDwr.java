package com.jatools.web.dwr.bd;

import com.jatools.manager.bd.BdCommonManager;
import com.jatools.web.cache.ParameterCache;

public class BdCommonDwr {
	private BdCommonManager bdCommonManager;
	
	public void setBdCommonManager(BdCommonManager dbCommonManager) {
		this.bdCommonManager = dbCommonManager;
	}
	/**
	 * 获取系统参数配置值
	 * @param name
	 * @return
	 */
	public String getParameterValue(String name){
		return ParameterCache.getInstance().getValue(name);
	}

}