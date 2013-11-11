package com.jatools.manager.sys.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jatools.dao.sys.UserDao;
import com.jatools.manager.sys.UserManager;
import com.jatools.vo.sys.User;

@Service("userManager")
public class UserManagerImpl implements UserManager{
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
