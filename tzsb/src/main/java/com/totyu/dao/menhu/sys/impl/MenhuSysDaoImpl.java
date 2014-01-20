package com.totyu.dao.menhu.sys.impl;

import org.springframework.stereotype.Repository;

import com.totyu.dao.BaseDao;
import com.totyu.dao.menhu.sys.MenhuSysDao;
import com.totyu.vo.menhu.sys.User;

@Repository
public class MenhuSysDaoImpl extends BaseDao implements MenhuSysDao {
	/**
	 * 根据用户名获取用户信息
	 */
	public User getLoginUserInfo(String username) {
		return (User) executeQueryForObject("MenhuSys.getLoginUserInfo", username);
	}
}
