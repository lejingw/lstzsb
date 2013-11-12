package com.totyu.dao.sys.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.totyu.dao.BaseDao;
import com.totyu.dao.sys.UserDao;
import com.totyu.vo.sys.User;

@Repository
public class UserDaoImpl extends BaseDao implements UserDao{
	public User getUserInfo(String usercode){
			User user = (User) executeQueryForObject("User.getUserInfo", usercode);
			return user;
	}

	/**
	 * 获取所有用户信息
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<User> getAllUser(){
		return (List<User>)executeQueryForList("User.getAllUser", null);
	}
}
