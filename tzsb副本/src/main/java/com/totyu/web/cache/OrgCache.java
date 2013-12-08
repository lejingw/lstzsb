package com.totyu.web.cache;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.totyu.common.Global;
import com.totyu.service.common.SysCommonService;
import com.totyu.vo.basic.Org;
import com.totyu.web.util.DateUtil;
import com.totyu.web.util.StringUtil;
/**
 * 组织数据缓存
 * @author wanglj
 */
public class OrgCache implements CacheSingletonIntf {
	private static Logger logger = Logger.getLogger(OrgCache.class);
	private static OrgCache orgCache = null;
	private static Map<String, Org> orgMap= null;
	private static Date refreshTime = null;

	private OrgCache() {
	}

	public synchronized static OrgCache getInstance() {
		if (null == OrgCache.orgCache) {
			init();
		}
		return OrgCache.orgCache;
	}

	public synchronized static void refresh(){
		orgCache = null;
		orgMap = null;
		init();
	}
	private synchronized static void init() {
		if (null == OrgCache.orgCache) {
			logger.debug("初始化组织缓存数据...");
			try {
				SysCommonService bdCommonService = (SysCommonService) Global.springContext.getBean("sysCommonService");
				if (null != bdCommonService) {
					logger.debug("初始化组织缓存数据...");
					OrgCache.orgMap = new LinkedHashMap<String, Org>();
					List<Org> financeOrgList = bdCommonService.getOrgTree();
					for (Org org : financeOrgList) {
						OrgCache.orgMap.put(org.getOrgId(), org);
					}
				}
				orgCache = new OrgCache();
			} catch (Exception e) {
				logger.error("初始化组织缓存数据失败");
				throw new RuntimeException("初始化组织缓存数据失败");
			}
		}
		refreshTime = new Date();
	}

	public synchronized void destroy() {
		if (null != OrgCache.orgCache) {
			OrgCache.orgCache = null;
		}
		if (null != OrgCache.orgMap) {
			OrgCache.orgMap.clear();
		}
	}

	/**
	 * 获取组织树数据
	 * @return
	 */
	public Map<String, Org> getOrgTree(){
		return OrgCache.orgMap;
	}

	/**
	 * 根据组织id获取组织名称，不区分、
	 * @param orgId
	 * @return
	 */
	public String getOrgName(String orgId) {
		if(StringUtil.isEmpty(orgId)){
			return null;
		}
		Org org = orgMap.get(orgId);
		if(null != org){
			return org.getOrgName();
		}
		return null;
	}

	/**
	 * 根据组织id获取组织名称，不区分组织
	 * @param orgId
	 * @return
	 */
	public Org getOrgById(String orgId) {
		if(StringUtil.isEmpty(orgId)){
			return null;
		}
		return orgMap.get(orgId);
	}
	public String getNameById(String id){
		return getOrgName(id);
	}
	public String getRefreshTime() {
		return DateUtil.formatSdf1(refreshTime);
	}
}
