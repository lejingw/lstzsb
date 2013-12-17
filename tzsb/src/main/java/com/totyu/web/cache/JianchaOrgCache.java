package com.totyu.web.cache;

import com.totyu.vo.common.Org;

/**
 * 组织数据缓存
 * 
 * @author wanglj
 */
public class JianchaOrgCache implements CacheSingletonIntf{
	private static JianchaOrgCache instance = null;
	private OrgCache orgCache = OrgCache.getInstance();

	private JianchaOrgCache() {
	}

	public static JianchaOrgCache getInstance() {
		if (null == instance) {
			instance = new JianchaOrgCache();
		}
		return instance;
	}

	public void refresh() {
		orgCache.refresh();
	}

	/**
	 * 根据组织id获取组织名称，不区分、
	 * 
	 * @param orgId
	 * @return
	 */
	public String getOrgName(String orgId) {
		return this.orgCache.getOrgName("1", orgId);
	}

	/**
	 * 根据组织id获取组织名称，不区分组织
	 * 
	 * @param orgId
	 * @return
	 */
	public Org getOrgById(String orgId) {
		return this.orgCache.getOrgById("1", orgId);
	}
	
	public String getRefreshTime() {
		return this.orgCache.getRefreshTime();
	}

	@Override
	public String getNameById(String id) {
		return getOrgName(id);
	}
}
