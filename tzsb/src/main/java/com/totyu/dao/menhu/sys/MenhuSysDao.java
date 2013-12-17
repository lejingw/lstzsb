package com.totyu.dao.menhu.sys;

import com.totyu.vo.menhu.sys.User;

public interface MenhuSysDao {
	/**
	 * 根据用户名获取用户信息
	 * @param username 用户名
	 */
	User getLoginUserInfo(String username);
}
