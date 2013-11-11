package com.jatools.dao.common;


public interface CommonDao {
	/**
	 * 查找单个string类型返回值
	 * @param sql
	 * @return
	 */
	public String querySingleString(String sql);
	/**
	 * 获取单据编号
	 */
	public String getBillno(String billCode);
	/**
	 * 获取工具条权限
	 * @param toolbarCode
	 * @param orgId
	 * @param userid
	 * @return
	public List<RightMapping> getToolbarRight(String toolbarCode, String orgId, String userid);
	 */
}
