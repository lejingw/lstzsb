package com.lejingw.apps.web;

public class LoginUserContext {
	private static ThreadLocal<String> userName = new ThreadLocal<String>();
	
	public static void setLoginUser(String u){
		userName.set(u);
	}
	
	public static String getLoginUser(){
		return userName.get();
	}
	
	public static void removeLoginUser(){
		userName.remove();
	}
}
