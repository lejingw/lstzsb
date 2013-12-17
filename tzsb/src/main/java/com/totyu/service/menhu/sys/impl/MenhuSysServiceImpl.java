package com.totyu.service.menhu.sys.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totyu.dao.menhu.sys.MenhuSysDao;
import com.totyu.service.BaseService;
import com.totyu.service.menhu.sys.MenhuSysService;
import com.totyu.vo.menhu.sys.User;

@Service
public class MenhuSysServiceImpl extends BaseService implements MenhuSysService {
	
	@Autowired
	private MenhuSysDao menhuSysDao;

	/**
	 * 根据用户名获取用户信息
	 */
	public User getLoginUserInfo(String username) {
		return menhuSysDao.getLoginUserInfo(username);
	}
}
