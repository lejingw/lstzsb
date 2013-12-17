package com.totyu.web.cache;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

import org.apache.log4j.Logger;

import com.totyu.common.Global;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.common.Parameter;
import com.totyu.web.util.DateUtil;

public class ParameterCache implements CacheSingletonIntf {
	private Logger logger = Logger.getLogger(ParameterCache.class);
	private static ParameterCache instance = null;

	private final ReentrantLock lock = new ReentrantLock();
	private final Map<String, String> map = new HashMap<String, String>();
	private Date refreshTime = null;

	private ParameterCache() {
	}

	public synchronized static ParameterCache getInstance() {
		if (null == instance) {
			instance = new ParameterCache();
			instance.init();
		}
		return instance;
	}

	public void refresh() {
		lock.lock();
		try {
			map.clear();
			init();
		} finally {
			lock.unlock();
		}
	}

	private void init() {
		lock.lock();
		try {
			SysCommonService sysCommonService = (SysCommonService) Global.springContext
					.getBean("sysCommonService");
			if (null == sysCommonService) {
				throw new RuntimeException("初始化spring上下文失败");
			}
			logger.debug("初始化配置参数缓存数据...");
			try {
				List<Parameter> list = sysCommonService.getAllParameters();
				for (Parameter parameter : list) {
					map.put(parameter.getName(), parameter.getValue());
				}
				refreshTime = new Date();
			} catch (Exception e) {
				logger.error("初始化配置参数缓存数据失败");
				throw new RuntimeException("初始化配置参数缓存数据失败");
			}
		} finally {
			lock.unlock();
		}
	}

	/**
	 * 根据配置参数name获取配置参数值
	 * 
	 * @param paramName
	 * @return
	 */
	public String getValue(String paramName) {
		lock.lock();
		try {
			return map.get(paramName);
		} finally {
			lock.unlock();
		}
	}

	public String getNameById(String id) {
		return getValue(id);
	}

	public String getRefreshTime() {
		return DateUtil.formatSdf1(refreshTime);
	}
}
