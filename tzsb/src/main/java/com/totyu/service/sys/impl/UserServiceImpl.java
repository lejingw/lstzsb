package com.totyu.service.sys.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.totyu.dao.sys.UserDao;
import com.totyu.service.sys.UserService;
import com.totyu.vo.sys.User;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	
	/**
	 * 获取用户信息
	 * @param usercode
	 * @return
	 */
	public User getUserInfo(String usercode){
		User user = userDao.getUserInfo(usercode);
		return user;
	}
	
	/**
	 * 获取所有用户信息
	 * @return
	 */
	public List<User> getAllUser(){
		return userDao.getAllUser();
	}
}
