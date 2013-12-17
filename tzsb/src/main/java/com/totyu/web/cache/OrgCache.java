package com.totyu.web.cache;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

import org.apache.log4j.Logger;

import com.totyu.common.Global;
import com.totyu.common.exception.TzsbException;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.common.Org;
import com.totyu.web.util.DateUtil;
import com.totyu.web.util.StringUtil;

/**
 * 组织数据缓存
 * 
 * @author wanglj
 */
public class OrgCache {
	private static Logger logger = Logger.getLogger(OrgCache.class);
	private static OrgCache instance = null;

	private final ReentrantLock lock = new ReentrantLock();
	private final Map<String, Org> qiyeMap = new LinkedHashMap<String, Org>();
	private final Map<String, Org> jianchaMap = new LinkedHashMap<String, Org>();
	private final Map<String, Org> xiangzhenMap = new LinkedHashMap<String, Org>();
	private final Map<String, Org> hangyeMap = new LinkedHashMap<String, Org>();
	private Date refreshTime = null;

	private OrgCache() {
	}

	public static OrgCache getInstance() {
		if (null == instance) {
			instance = new OrgCache();
			instance.init();
		}
		return instance;
	}

	public void refresh() {
		lock.lock();
		try {
			qiyeMap.clear();
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
			logger.debug("初始化组织缓存数据...");
			try {
				List<Org> list = sysCommonService.getAllOrg();
				for (Org org : list) {
					Map<String, Org> map = getOrgMap(org.getOrgType());
					if(null != map){
						map.put(org.getOrgId(), org);
					}
				}
				refreshTime = new Date();
			} catch (Exception e) {
				e.printStackTrace();
				logger.error("初始化组织缓存数据失败");
				throw new RuntimeException("初始化组织缓存数据失败");
			}
		} finally {
			lock.unlock();
		}
	}
	
	private Map<String, Org> getOrgMap(String type){
		if("0".equals(type))
			return qiyeMap;
		if("1".equals(type))
			return jianchaMap;
		if("2".equals(type))
			return xiangzhenMap;
		if("3".equals(type))
			return hangyeMap;
		return null;
	}

	/**
	 * 根据组织id获取组织名称，不区分、
	 * 
	 * @param orgId
	 * @return
	 */
	public String getOrgName(String type, String orgId) {
		lock.lock();
		try {
			if (StringUtil.isEmpty(type)||StringUtil.isEmpty(orgId)) {
				return null;
			}
			Map<String, Org> map = getOrgMap(type);
			if(null != map){
				Org org = map.get(orgId);
				if (null != org) {
					return org.getOrgName();
				}
			}
			return null;
		} finally {
			lock.unlock();
		}
	}

	/**
	 * 根据组织id获取组织名称，不区分组织
	 * 
	 * @param orgId
	 * @return
	 */
	public Org getOrgById(String type, String orgId) {
		lock.lock();
		try {
			if (StringUtil.isEmpty(type)||StringUtil.isEmpty(orgId)) {
				return null;
			}
			Map<String, Org> map = getOrgMap(type);
			if(null != map){
				return map.get(orgId);
			}
			return null;
		} finally {
			lock.unlock();
		}
	}
	public Map<String, Org> getAllQiyeOrg(){
		return this.qiyeMap;
	}
	public Map<String, Org> getAllJianchaOrg(){
		return this.jianchaMap;
	}
	public Map<String, Org> getAllXiangzhenOrg(){
		return this.xiangzhenMap;
	}
	public Map<String, Org> getAllHangyeOrg(){
		return this.hangyeMap;
	}
	public Map<String, Org> getOrgData(int orgType) {
		switch(orgType){
			case 0:
				return this.qiyeMap;
			case 1:
				return this.jianchaMap;
			case 2:
				return this.xiangzhenMap;
			case 3:
				return this.hangyeMap;
		}
		throw new TzsbException("无法获取组织机构类型");
	}
	public String getRefreshTime() {
		return DateUtil.formatSdf1(refreshTime);
	}
}
