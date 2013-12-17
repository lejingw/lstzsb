package com.totyu.service.menhu.sys;

import com.totyu.vo.menhu.sys.User;

public interface MenhuSysService {
	
	/**
	 * 根据用户名获取用户信息
	 */
	User getLoginUserInfo(String username);
}
