package com.totyu.dao.sys;

import java.util.List;

import com.totyu.vo.sys.User;

public interface UserDao {
	/**
	 * 根据用户编码获取用户信息
	 * @return
	 */
	User getUserInfo(String usercode);
	/**
	 * 获取所有用户信息
	 * @return
	 */
	List<User> getAllUser();
}
