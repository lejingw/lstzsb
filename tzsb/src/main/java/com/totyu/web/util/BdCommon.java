package com.totyu.web.util;

import com.totyu.common.constant.DictConstant;
import com.totyu.web.cache.DictCache;
import com.totyu.web.cache.OrgCache;
import com.totyu.web.cache.ParameterCache;
import com.totyu.web.cache.UserCache;

public class BdCommon {
	/**
	 * 获取配置参数值
	 */
	public static String getParameterValue(String name){
		String tmp = ParameterCache.getInstance().getValue(name);
		if(null == tmp){
			throw new RuntimeException("不能获取系统参数配置值["+name+"]");
		}
		return tmp;
	}
	/**
	 * 根据用户id获取用户名称
	 * 支持用逗号分隔的多个id
	 */
	public static String getUserName(String userIds){
		return UserCache.getInstance().getNameById(userIds);
	}
	
	/**
	 * 根据组织id获取组织名称
	 * 支持用逗号分隔的多个id
	 */
	public static String getOrgName(String type, String orgIds){
		if(StringUtil.isEmpty(orgIds))
			return null;
		String[] orgIdArr = orgIds.split(",");
		String nameStr = "$";
		for(String orgId : orgIdArr){
			if(!StringUtil.isEmpty(orgId)){
				String tmp = OrgCache.getInstance().getOrgName(type, orgId);
				if(null != tmp){
					nameStr += "," + tmp;
				}
			}
		}
		if("$".equals(nameStr))
			return orgIds;
		return nameStr.substring(2);
	}
	/**
	 * 获取单据状态名称
	 */
	public static String getStatusName(String status) {
		return DictCache.getInstance().getValue(DictConstant.BILL_STATUS, status);
	}
	/**
	 * 获取数据字典值
	 */
	public static String getDictValue(String name, String key){
		return DictCache.getInstance().getValue(name, key);
	}
}
