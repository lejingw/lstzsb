package com.jatools.manager.common.impl;

import com.jatools.dao.common.CommonDao;
import com.jatools.manager.common.CommonManager;

public class CommonManagerImpl implements CommonManager {
	private CommonDao commonDao;
	
	public void setCommonDao(CommonDao commonDao) {
		this.commonDao = commonDao;
	}

	/**
	 * 获取单据编号
	 */
	public synchronized String getBillno(String billCode){
		return commonDao.getBillno(billCode);
	}
}
