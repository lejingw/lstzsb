package com.totyu.web.cache;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

import org.apache.log4j.Logger;

import com.totyu.common.Global;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.common.User;
import com.totyu.web.util.DateUtil;
import com.totyu.web.util.StringUtil;

/**
 * 用户数据缓存
 * 
 * @author wanglj
 * 
 */
public class UserCache implements CacheSingletonIntf {
	private Logger logger = Logger.getLogger(UserCache.class);
	private static UserCache instance = null;

	private final ReentrantLock lock = new ReentrantLock();
	private final Map<String, User> map = new HashMap<String, User>();
	private Date refreshTime = null;

	private UserCache() {
	}

	public synchronized static UserCache getInstance() {
		if (null == instance) {
			instance = new UserCache();
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
			logger.debug("初始化用户缓存数据...");
			try {
				List<User> list = sysCommonService.getAllUser();
				for (User user : list) {
					map.put(user.getUserid(), user);
				}
				refreshTime = new Date();
			} catch (Exception e) {
				logger.error("初始化用户缓存数据失败");
				throw new RuntimeException("初始化用户缓存数据失败");
			}
		} finally {
			lock.unlock();
		}
	}

	/**
	 * 根据用户id获取用户名称
	 * 
	 * @param userId
	 * @return
	 */
	public String getUserName(String userId) {
		lock.lock();
		try {
			User user = map.get(userId);
			if (null != user) {
				return user.getUsername();
			}
			return null;
		} finally {
			lock.unlock();
		}
	}

	public String getNameById(String userIds) {
		if (StringUtil.isEmpty(userIds)) {
			return null;
		}
		String[] useridArr = userIds.split(",");
		String nameStr = "$";
		for (String userid : useridArr) {
			if (!StringUtil.isEmpty(userid)) {
				String tmp = getUserName(userid);
				if (null != tmp) {
					nameStr += "," + tmp;
				}
			}
		}
		if ("$".equals(nameStr))
			return userIds;
		return nameStr.substring(2);
	}

	public String getRefreshTime() {
		return DateUtil.formatSdf1(refreshTime);
	}
}
