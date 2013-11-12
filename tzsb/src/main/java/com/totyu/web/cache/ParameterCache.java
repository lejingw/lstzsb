package com.totyu.web.cache;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.totyu.common.Global;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.sys.Parameter;
import com.totyu.web.util.DateUtil;

public class ParameterCache implements CacheSingletonIntf {
	private static Logger logger = Logger.getLogger(ParameterCache.class);
	private static ParameterCache parameterCache = null;
	private static Map<String, String> parameterMap = null;
	private static Date refreshTime = null;

	private ParameterCache() {
	}

	public synchronized static ParameterCache getInstance() {
		if (null == parameterCache) {
			init();
		}
		return ParameterCache.parameterCache;
	}
	public synchronized static void refresh(){
		parameterCache = null;
		parameterMap = null;
		init();
	}

	private synchronized static void init() {
		if (null == ParameterCache.parameterCache) {
			logger.debug("初始化配置参数缓存数据...");
			try {
				SysCommonService sysCommonService = (SysCommonService) Global.springContext.getBean("sysCommonService");
				if (null != sysCommonService) {
					ParameterCache.parameterMap = new HashMap<String, String>();
					List<Parameter> list = sysCommonService.getAllParameters();
					for(Parameter parameter : list){
						ParameterCache.parameterMap.put(parameter.getName(), parameter.getValue());
					}
				}
				ParameterCache.parameterCache = new ParameterCache();
			} catch (Exception e) {
				logger.error("初始化配置参数缓存数据失败");
				throw new RuntimeException("初始化配置参数缓存数据失败");
			}
		}
		refreshTime = new Date();
	}

	public synchronized void destroy() {
		if (null != ParameterCache.parameterCache) {
			ParameterCache.parameterCache = null;
		}
		if(null != ParameterCache.parameterMap){
			ParameterCache.parameterMap.clear();
		}
	}
	/**
	 * 根据配置参数name获取配置参数值
	 * @param paramName
	 * @return
	 */
	public String getValue(String paramName){
		return ParameterCache.parameterMap.get(paramName);
	}

	public String getNameById(String id){
		return getValue(id);
	}
	public String getRefreshTime() {
		return DateUtil.formatSdf1(refreshTime);
	}
}
