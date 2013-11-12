package com.jatools.manager.common.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jatools.dao.common.SysCommonDao;
import com.jatools.manager.common.SysCommonManager;
import com.jatools.vo.basic.Org;
import com.jatools.vo.sys.Parameter;

@Service("sysCommonManager")
public class SysCommonManagerImpl implements SysCommonManager {
	@Autowired
	private SysCommonDao sysCommonDao;
	/**
	 * 获取单据编号
	 */
	public synchronized String getBillno(String billCode){
		return sysCommonDao.getBillno(billCode);
	}
	
	/**
	 * 获取所有系统参数配置
	 */
	public List<Parameter> getAllParameters(){
		return sysCommonDao.getAllParameters();
	}
	/**
	 * 根据组织类型获取组织树
	 * @return
	 */
	public List<Org> getOrgTree(){
		return sysCommonDao.getOrgTree();
	}
}
