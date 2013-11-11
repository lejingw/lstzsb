package com.jatools.manager.bd.impl;

import java.util.List;

import com.jatools.dao.bd.BdCommonDao;
import com.jatools.manager.bd.BdCommonManager;
import com.jatools.vo.basic.Org;
import com.jatools.vo.sys.Parameter;

public class BdCommonManagerImpl implements BdCommonManager {

	private BdCommonDao bdCommonDao;
	
	public void setBdCommonDao(BdCommonDao bdCommonDao) {
		this.bdCommonDao = bdCommonDao;
	}

	/**
	 * 获取所有系统参数配置
	 */
	public List<Parameter> getAllParameters(){
		return bdCommonDao.getAllParameters();
	}
	/**
	 * 根据组织类型获取组织树
	 * @return
	 */
	public List<Org> getOrgTree(){
		return bdCommonDao.getOrgTree();
	}
}
