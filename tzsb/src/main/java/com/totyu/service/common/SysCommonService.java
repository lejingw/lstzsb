package com.totyu.service.common;

import java.util.List;

import com.totyu.vo.basic.Org;
import com.totyu.vo.sys.Parameter;


public interface SysCommonService {

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
