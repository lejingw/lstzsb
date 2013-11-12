package com.totyu.dao.common;

import java.util.List;

import com.totyu.vo.basic.Org;
import com.totyu.vo.sys.Parameter;


public interface SysCommonDao {
	/**
	 * 查找单个string类型返回值
	 * @param sql
	 * @return
	 */
	String querySingleString(String sql);
	/**
	 * 获取单据编号
	 */
	String getBillno(String billCode);
	/**
	 * 获取所有系统参数配置
	 */
	List<Parameter> getAllParameters();
	/**
	 * 根据组织类型获取组织树
	 * @return
	 */
	List<Org> getOrgTree();
}
