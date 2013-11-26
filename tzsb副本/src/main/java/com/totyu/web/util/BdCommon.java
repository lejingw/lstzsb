package com.totyu.web.util;

import com.totyu.common.constant.DictConstant;
import com.totyu.web.cache.OrgCache;
import com.totyu.web.cache.ParameterCache;
import com.totyu.web.cache.UserCache;

public class BdCommon {
	/**
	 * 获取配置参数值
	 * @param name
	 * @return
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
	 * @param userIds
	 * @return
	 */
	public static String getUserName(String userIds){
		if(StringUtil.isEmpty(userIds)){
			return null;
		}
		String[] useridArr = userIds.split(",");
		String nameStr = "$";
		for(String userid : useridArr){
			if(!StringUtil.isEmpty(userid)){
				String tmp = UserCache.getInstance().getUserName(userid);
				if(null != tmp){
					nameStr += "," + tmp;
				}
			}
		}
		if("$".equals(nameStr))
			return userIds;
		return nameStr.substring(2);
	}
	
	/**
	 * 根据组织id获取组织名称
	 * 支持用逗号分隔的多个id
	 * @param orgIds
	 * @return
	 */
	public static String getOrgName(String orgIds){
		if(StringUtil.isEmpty(orgIds))
			return null;
		String[] orgIdArr = orgIds.split(",");
		String nameStr = "$";
		for(String orgId : orgIdArr){
			if(!StringUtil.isEmpty(orgId)){
				String tmp = OrgCache.getInstance().getOrgName(orgId);
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
	 * @param status
	 * @return
	 */
	public static String getStatusName(String status) {
		return DictUtil.getValue(DictConstant.BILL_STATUS, status);
	}

}
