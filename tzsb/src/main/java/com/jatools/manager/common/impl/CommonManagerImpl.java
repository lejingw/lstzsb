package com.jatools.manager.common.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jatools.dao.common.CommonDao;
import com.jatools.manager.common.CommonManager;

@Service
public class CommonManagerImpl implements CommonManager {
	@Autowired
	private CommonDao commonDao;
	/**
	 * 获取单据编号
	 */
	public synchronized String getBillno(String billCode){
		return commonDao.getBillno(billCode);
	}
}
