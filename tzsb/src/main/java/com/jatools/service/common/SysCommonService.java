package com.jatools.manager.common;

import java.util.List;

import com.jatools.vo.basic.Org;
import com.jatools.vo.sys.Parameter;


public interface SysCommonManager {

	/**
	 * 获取单据编号
	 */
	String getBillno(String billCode);

	/**
	 * 获取所有系统参数配置
	 */
	List<Parameter> getAllParameters();
	/**
	 * 根据组织类型，获取组织、树
	 * @param orgType
	 * @return
	 */
	List<Org> getOrgTree();
}
