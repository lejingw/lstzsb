package com.jatools.dao.bd.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jatools.dao.BaseDao;
import com.jatools.dao.bd.BdCommonDao;
import com.jatools.vo.basic.Org;
import com.jatools.vo.sys.Parameter;

@Repository
public class BdCommonDaoImpl extends BaseDao implements BdCommonDao {
	/**
	 * 获取所有系统参数配置
	 */
	public List<Parameter> getAllParameters(){
		return executeQueryForList("BdCommon.getAllParameters", null);
	}
	/**
	 * 根据组织类型获取组织树
	 * @return
	 */
	public List<Org> getOrgTree(){
		return executeQueryForList("BdCommon.getOrgTree", null);
	}
}
