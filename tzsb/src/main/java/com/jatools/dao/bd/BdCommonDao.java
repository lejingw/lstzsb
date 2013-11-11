package com.jatools.dao.bd;

import java.util.List;

import com.jatools.vo.basic.Org;
import com.jatools.vo.sys.Parameter;

public interface BdCommonDao {
	/**
	 * 获取所有系统参数配置
	 */
	public List<Parameter> getAllParameters();
	/**
	 * 根据组织类型获取组织树
	 * @return
	 */
	List<Org> getOrgTree();

}